#!/usr/bin/env python3
"""Sort contiguous code blocks by the numeric value after message=. """

import argparse
import re
import sys
from pathlib import Path

MESSAGE_RE = re.compile(r"message=(\d+)")
TARGET_RE = re.compile(r"^execute as @e\[scores=\{[^}]*message=\d+[^}]*\}] run .*")


def sort_block(lines):
    def sort_key(line):
        match = MESSAGE_RE.search(line)
        return int(match.group(1)) if match else float('inf')

    return sorted(lines, key=sort_key)


def process_text(text):
    lines = text.splitlines()
    output = []
    block = []

    for line in lines:
        if TARGET_RE.match(line):
            block.append(line)
        else:
            if block:
                output.extend(sort_block(block))
                block = []
            output.append(line)

    if block:
        output.extend(sort_block(block))

    return "\n".join(output) + ("\n" if text.endswith("\n") else "")


def main():
    parser = argparse.ArgumentParser(description="Sort code blocks by numeric message= values.")
    parser.add_argument("file", nargs="?", help="Input file to sort. If omitted, stdin is used.")
    args = parser.parse_args()

    if args.file:
        text = Path(args.file).read_text(encoding="utf-8")
    elif not sys.stdin.isatty():
        text = sys.stdin.read()
    else:
        sys.stdout.write("Paste your input below. Enter a blank line to sort and print:\n")
        sys.stdout.flush()
        lines = []
        while True:
            try:
                line = input()
            except EOFError:
                break
            if line == "":
                break
            lines.append(line)
        text = "\n".join(lines) + ("\n" if lines else "")

    sorted_text = process_text(text)
    separator = "\n" * 5 + "----- SORTED OUTPUT -----\n"
    sys.stdout.write(separator + sorted_text)


if __name__ == "__main__":
    main()

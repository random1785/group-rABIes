#!/usr/bin/env python3
import argparse
import os
import subprocess
import threading
import time

from serve_no_cache import run_server

DEFAULT_ROOT = "/workspaces/group-rABIes"
DEFAULT_OUT = "/workspaces/group-rABIes.zip"
DEFAULT_TARGETS = ["data", "pack.mcmeta", "README.md"]


def snapshot(root: str, targets: list[str]):
    files = []
    for rel in targets:
        path = os.path.join(root, rel)
        if os.path.isdir(path):
            for dirpath, _, filenames in os.walk(path):
                for name in filenames:
                    full = os.path.join(dirpath, name)
                    st = os.stat(full)
                    files.append((full, st.st_mtime_ns, st.st_size))
        elif os.path.exists(path):
            st = os.stat(path)
            files.append((path, st.st_mtime_ns, st.st_size))
    files.sort()
    return files


def rebuild(root: str, output: str, targets: list[str]):
    timestamp = time.strftime("%Y%m%d-%H%M%S")
    versioned_out = f"/workspaces/group-rABIes-{timestamp}.zip"
    subprocess.run(["zip", "-qr", output, *targets], cwd=root, check=True)
    subprocess.run(["cp", output, versioned_out], check=True)
    print(f"Rebuilt {output} and {versioned_out} at {time.strftime('%Y-%m-%d %H:%M:%S')}")


def start_server(directory: str = "/workspaces", port: int = 8000) -> threading.Thread:
    thread = threading.Thread(target=run_server, args=(directory, port), daemon=True)
    thread.start()
    return thread


def main():
    parser = argparse.ArgumentParser(
        description="Watch a workspace, rebuild a ZIP archive on changes, and optionally serve it over HTTP."
    )
    parser.add_argument("--root", default=DEFAULT_ROOT, help="Workspace root directory to watch")
    parser.add_argument("--output", default=DEFAULT_OUT, help="Primary ZIP output path")
    parser.add_argument(
        "--targets",
        nargs="+",
        default=DEFAULT_TARGETS,
        help="Files and directories to include in the ZIP",
    )
    parser.add_argument("--watch-interval", type=float, default=2.0, help="Poll interval in seconds")
    parser.add_argument("--port", type=int, default=8000, help="Port for the HTTP server")
    parser.add_argument("--serve-directory", default="/workspaces", help="Directory served by the HTTP server")
    parser.add_argument("--disable-server", action="store_true", help="Do not start the HTTP server")
    args = parser.parse_args()

    if not args.disable_server:
        start_server(directory=args.serve_directory, port=args.port)

    rebuild(args.root, args.output, args.targets)
    prev = snapshot(args.root, args.targets)
    print(f"Watching {args.root} for changes")
    try:
        while True:
            time.sleep(args.watch_interval)
            current = snapshot(args.root, args.targets)
            if current != prev:
                rebuild(args.root, args.output, args.targets)
                prev = current
    except KeyboardInterrupt:
        print("Stopping watcher.")


if __name__ == "__main__":
    main()

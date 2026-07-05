#!/usr/bin/env python3
import os
import http.server
import socketserver

PORT = 8000
DIRECTORY = "/workspaces"


class NoCacheHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Pragma", "no-cache")
        self.send_header("Expires", "0")
        super().end_headers()

    def log_message(self, format, *args):
        pass


class ThreadedTCPServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    daemon_threads = True


def run_server(directory: str = DIRECTORY, port: int = PORT):
    os.chdir(directory)
    with ThreadedTCPServer(("0.0.0.0", port), NoCacheHandler) as httpd:
        print(f"Serving {directory} on port {port} with no-cache headers")
        httpd.serve_forever()


if __name__ == "__main__":
    run_server()

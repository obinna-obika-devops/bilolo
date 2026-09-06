from http.server import BaseHTTPRequestHandler, HTTPServer
import json

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == "/health":
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.end_headers()
            self.wfile.write(json.dumps({"status": "ok"}).encode())
            return
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"platform-api")

    def log_message(self, fmt, *args):
        return

HTTPServer(("0.0.0.0", 8080), Handler).serve_forever()

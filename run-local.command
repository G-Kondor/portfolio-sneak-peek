#!/bin/bash
# Double-click this file to preview the portfolio locally.
# Starts a Python HTTP server on port 8000 and opens it in your browser.
# Press Ctrl+C in the Terminal window to stop the server.

set -e
cd "$(dirname "$0")"

PORT=8765

echo ""
echo "─────────────────────────────────────────────────"
echo "  Preview running at: http://localhost:${PORT}"
echo "  Press Ctrl+C here to stop."
echo "─────────────────────────────────────────────────"
echo ""

# Open the browser shortly after the server starts
( sleep 1 && open "http://localhost:${PORT}/index.html" ) &

# Start the server (Python 3 is bundled with macOS)
python3 -m http.server "${PORT}"

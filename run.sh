#!/bin/bash

# Start a simple HTTP server on port 8000 in the background
python3 -m http.server 8000 >/dev/null 2>&1 &

# Save the process ID so we can stop it later if needed
SERVER_PID=$!

# Give the server a moment to start
sleep 1

# Open the HTML game in the default browser (Ubuntu uses xdg-open)
xdg-open "http://localhost:8000/the_spanish_game.html"

# Keep script running so server stays alive until user presses Ctrl+C
echo "Server running at http://localhost:8000"
echo "Press Ctrl+C to stop"
wait $SERVER_PID


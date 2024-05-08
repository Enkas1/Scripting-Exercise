#!/bin/bash

# Check if Google Chrome is currently running
if pgrep "chrome" > /dev/null; then
    # If Chrome is running, stop it
    kill -9 61156
    echo "Stopped Google Chrome."
fi

# Start Google Chrome
"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" &

echo "Restarted Google Chrome."
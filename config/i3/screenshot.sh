#!/bin/bash

# Define screenshot file path
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"
FILENAME="$SCREENSHOT_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Take screenshot and save it
scrot "$FILENAME"

# Copy screenshot to clipboard
xclip -selection clipboard -t image/png -i "$FILENAME"

# Notify the user
notify-send "Screenshot Taken" "Saved to $FILENAME and copied to clipboard"


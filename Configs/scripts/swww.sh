#!/bin/bash

# Use the absolute path instead of ~
DIR="/home/pavan/Wallpapers"

# 1. Find a random image (handles spaces and ensures the path is valid)
RANDOM_PIC=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" -o -name "*.jpeg" \) | shuf -n 1)

# 2. Check if we actually found an image
if [ -z "$RANDOM_PIC" ]; then
    notify-send "Wallpaper Error" "No images found in $DIR"
    exit 1
fi

# 3. Set the wallpaper
#notify-send "Wallpaper changed"
awww img "$RANDOM_PIC" --transition-type grow --transition-duration 3
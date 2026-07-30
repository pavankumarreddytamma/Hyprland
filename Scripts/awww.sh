#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="/home/pavan/Wallpapers"

# Transition types available in swww:
# "any", "outer", "random", "grow", "fade", "wipe", "wave", "crop"
TRANSITION_TYPE="random"
TRANSITION_STEP=90
TRANSITION_FPS=60

# Ensure swww daemon is running
if ! pgrep -x "awww-daemon" > /dev/null; then
    awww-daemon &
    # Wait a brief moment for the daemon to initialize
    sleep 0.5
fi

# Select a random wallpaper from the directory
if [ -d "$WALLPAPER_DIR" ]; then
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) | shuf -n 1)
    
    if [ -n "$RANDOM_WALLPAPER" ]; then
        awww img "$RANDOM_WALLPAPER" \
            --transition-type "$TRANSITION_TYPE" \
            --transition-step "$TRANSITION_STEP" \
            --transition-fps "$TRANSITION_FPS"
    else
        echo "No images found in $WALLPAPER_DIR"
    fi
else
    echo "Wallpaper directory $WALLPAPER_DIR does not exist."
fi
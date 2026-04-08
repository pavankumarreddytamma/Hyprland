#!/bin/bash

# 1. Get all desktop files and format them for rofi with icons
# Format: Name\0icon\x1fIconName
list_apps() {
    grep -h "^Name=" /usr/share/applications/*.desktop ~/.local/share/applications/*.desktop 2>/dev/null | \
    sed 's/^Name=//' | sort -u | while read -r name; do
        # Find the icon name from the desktop file for this app
        icon=$(grep -hril "^Name=$name$" /usr/share/applications/ ~/.local/share/applications/ 2>/dev/null | xargs grep -m 1 "^Icon=" | sed 's/^Icon=//')
        echo -en "$name\0icon\x1f$icon\n"
    done
}

# 2. Run rofi in dmenu mode with the -no-custom flag
selected=$(list_apps | rofi -dmenu -no-custom -i -show-icons -p "Apps")

# 3. Launch the selected app
if [ -n "$selected" ]; then
    # We use dex or gtk-launch to handle the desktop file properly
    # If you don't have dex, you can just try running the command directly
    gtk-launch "$(grep -l "Name=$selected" /usr/share/applications/*.desktop ~/.local/share/applications/*.desktop | xargs basename | sed 's/\.desktop//' | head -n 1)" &
fi

#!/usr/bin/env bash

# Get fullscreen state of the focused window
FS=$(hyprctl activewindow -j | jq '.fullscreen')

if [ "$FS" -ne 0 ]; then
    # Window is in fullscreen (any type)
    pkill waybar
else
    # No fullscreen
    if ! pgrep -x waybar > /dev/null; then
        waybar &
    fi
fi

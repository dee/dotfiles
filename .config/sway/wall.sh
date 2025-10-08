#!/bin/bash
wallpaper=$(find ~/Pictures/Wp -type f | fuzzel -w 60 --dmenu --config ~/.config/sway/fuzzel.ini)
# [ -n "$wallpaper" ] && swaybg -i "$wallpaper" -m fill
if [ -n "$wallpaper" ]; then
    killall swaybg
    swaybg -i "$wallpaper" -m fill &
    echo $wallpaper > ~/.last_wallpaper
fi

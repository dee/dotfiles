#!/usr/bin/fish

echo $argv

if set -q argv 
    echo "Copying to wallpaper dir"
    cp $argv ~/.cache/wallpaper
else
    echo "Arguments are empty"
end

if test -e ~/.cache/wallpaper
    echo "Setting wallpaper"
    killall swaybg 2>/dev/null
    swaybg -o '*' -i ~/.cache/wallpaper &
end

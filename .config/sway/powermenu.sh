#!/bin/bash
options="Shutdown\nReboot\nSleep"
choice=$(echo -e $options | fuzzel --dmenu --prompt="Power Options" --config ~/.config/sway/fuzzel.ini)
case $choice in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Sleep) systemctl suspend ;;
*) ;;
esac

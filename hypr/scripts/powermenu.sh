#!/bin/bash
chosen=$(printf "Reboot\nShutdown" | rofi -dmenu -i -p "Power" -theme ~/.config/rofi/config.rasi)

case "$chosen" in
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac

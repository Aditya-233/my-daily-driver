#!/bin/bash
BAT_STATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E "state" | awk '{print $2}')

if [ "$BAT_STATE" == "discharging" ]; then
    powerprofilesctl set balanced
else
    powerprofilesctl set performance
fi

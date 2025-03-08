#!/bin/bash

# Detect if the lid is closed
LID_STATE=$(cat /proc/acpi/button/lid/LID/state | awk '{print $2}')

if [ "$LID_STATE" = "closed" ]; then
    xrandr --output eDP-1 --off --output HDMI-1 --mode 1920x1080 --primary
else
    xrandr --output eDP-1 --mode 1920x1080 --primary --output HDMI-1 --mode 1920x1080 --left-of eDP-1
fi


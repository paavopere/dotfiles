#!/bin/sh
echo "$(date) office-3-externals" >> ~/.screenlayout/log
xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-3-0 --off --output DP-2-8 --mode 2560x1440 --pos 0x0 --rotate right --output DP-2-1 --off --output DP-2-1-8 --primary --mode 2560x1440 --pos 1440x560 --rotate normal --output DP-2-1-1 --mode 1920x1200 --pos 4000x320 --rotate left --output DP-3-8 --off --output DP-3-1 --off --output DP-3-1-8 --off --output DP-3-1-1 --off >> ~/.screenlayout/log

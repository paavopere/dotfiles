#!/bin/sh
echo "$(date) home-2-externals-v-h" >> ~/.screenlayout/log
xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-2-8 --primary --mode 2560x1440 --pos 1440x560 --rotate normal --output DP-2-1 --off --output DP-2-1-8 --mode 2560x1440 --pos 0x0 --rotate left --output DP-2-1-1 --off >> ~/.screenlayout/log

#!/bin/sh
echo "$(date) home-2-externals" >> ~/.screenlayout/log
xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-2-8 --primary --mode 2560x1440 --pos 1440x0 --rotate left --output DP-2-1 --off --output DP-2-1-8 --mode 2560x1440 --pos 0x0 --rotate left --output DP-2-1-1 --off --output DP-3-8 --off --output DP-3-1 --off --output DP-3-1-8 --off --output DP-3-1-1 --off >> ~/.screenlayout/log

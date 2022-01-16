#!/bin/sh
echo "$(date) laptop-only" >> ~/.screenlayout/log
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-2-8 --off --output DP-2-1 --off --output DP-2-1-8 --off --output DP-2-1-1 --off >> ~/.screenlayout/log


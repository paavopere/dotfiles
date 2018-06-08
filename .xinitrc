#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export FOO=bar
export FOO2=bar2
export BROWSER="/usr/bin/google-chrome-stable"

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

eval $(ssh-agent)
exec i3


#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export XINITFOO=bar
export BROWSER="/usr/bin/google-chrome-stable"

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

eval $(ssh-agent)
exec i3


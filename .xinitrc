#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export XINITFOO=bar
export BROWSER="/usr/bin/qutebrowser"

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# probably not the right place for this
# export PATH="$PATH:$HOME/.local/bin"

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# https://wiki.archlinux.org/index.php/GNOME/Keyring#Without_a_display_manager
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export SSH_AUTH_SOCK

# # start agent
# eval $(ssh-agent)

# # keyboard stuff
# setxkbmap -layout "fi,fi,us" -variant "nodeadkeys,," -option "compose:caps" -option "grp:alt_shift_toggle"
# xbindkeys


# start wm
exec tdm --xstart
# used to be:
# exec i3


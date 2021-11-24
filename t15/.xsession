export HELLO_FROM_XSESSION=hello

# keyboard layout if not set elsewhere (e.g. in DE)
setxkbmap -layout "fi,fi,us" -variant "nodeadkeys,," -option "compose:caps" -option "grp:alt_shift_toggle"

# for SSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


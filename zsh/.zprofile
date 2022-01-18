# ntfd &
export mesa_glthread=true
export MOZ_DISABLE_RDD_SANDBOX=1

if [[ $(tty) = "/dev/tty1" ]]; then
    pgrep bspwm || startx $XDG_CONFIG_HOME/xinitrc
fi

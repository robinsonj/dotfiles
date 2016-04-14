# Start the ssh-agent process and Xorg.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec ssh-agent startx

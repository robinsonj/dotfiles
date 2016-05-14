# Set env variables here.
export GOPATH=~/Workspace/Go

# Start the ssh-agent process and Xorg.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec ssh-agent startx

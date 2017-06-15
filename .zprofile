export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Start the ssh-agent process and Xorg.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec ssh-agent startx

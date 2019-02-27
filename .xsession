#!/bin/sh

# Configure the connected screens.
if [ -e ~/bin/screens ]; then
  (
    sleep 0.5;
    ~/bin/screens;
  ) &
fi

# Load the user preferences for x11.
source ~/.xinitrc

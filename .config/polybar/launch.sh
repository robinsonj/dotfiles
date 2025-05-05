#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Fix polybar.
# monitor=$(xrandr --query | grep " connected" | grep primary | cut -d" " -f1)

env MONITOR=eDP1 polybar --reload main &

if [[ ($(xrandr --listactivemonitors | grep "HDMI2")) ]]
then
  env MONITOR=HDMI2 polybar --reload secondary &
end

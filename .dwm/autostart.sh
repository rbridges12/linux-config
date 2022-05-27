#!/bin/bash
xrdb -merge ~/.Xresources

# set display configuration based on which monitors are connected
NUM_DISPLAYS=$(xrandr -q | grep " connected" | wc -l)
echo "$NUM_DISPLAYS displays connected"
if [[ $NUM_DISPLAYS == "3" ]]; then
    xrandr --output DP-3 --primary --auto --output DP-1 --scale 1.2x1.2 --auto --right-of DP-3 --output eDP-1 --scale 1x1 --auto --below DP-3
elif [[ $NUM_DISPLAYS == "1" ]]; then
    xrandr --output eDP-1 --primary --auto
fi

feh --bg-scale ~/Downloads/beach_wave.jpeg

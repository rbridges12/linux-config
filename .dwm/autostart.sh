#!/bin/bash
xrdb -merge ~/.Xresources

# set display configuration based on which monitors are connected
NUM_DISPLAYS=$(xrandr -q | grep " connected" | wc -l)
echo "$NUM_DISPLAYS displays connected"

# triple monitor setup
if [[ $NUM_DISPLAYS == "3" ]]; then
    xrandr --output DP-3 --primary --auto \
           --output DP-1 --scale 1.2x1.2 --auto --right-of DP-3 \
           --output eDP-1 --scale 1x1 --auto --below DP-3

# single monitor setup
elif [[ $NUM_DISPLAYS == "1" ]]; then
    xrandr --output eDP-1 --primary --auto

# double monitor setup
  elif [[ $NUM_DISPLAYS == "2" ]]; then
    xrandr --output DP-1 --primary --auto --scale 1x1 \
           --output eDP-1 --off
fi

feh --bg-fill ~/.dwm/gorskii_lilac.jpg
# feh --bg-fill ~/.dwm/dirt_road_painting.png

picom --config ~/.config/picom/picom.conf

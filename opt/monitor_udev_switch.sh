#!/bin/bash
export DISPLAY=:0.0
export XAUTHORITY=/home/berserker/.Xauthority

xrandr | grep "VGA1 connected"
if [[ $? == 0 ]]; then
  echo 'connected'
  # is connected
  xrandr --output VGA1 --auto
  xrandr --output LVDS1 --off
else
  # not connected
  echo 'not'
  xrandr --output VGA1 --off
  xrandr --output LVDS1 --auto
fi

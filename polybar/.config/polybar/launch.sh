#! /bin/bash
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=config.ini --reload toph &
  done
else
  polybar --config="~/dotfiles/poly:bar/.config/polybar/config.ini" --reload toph &
fi

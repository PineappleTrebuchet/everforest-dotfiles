#!/bin/bash
current=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n1 | grep -Po '\d+?(?=%)' | head -n1)
if [ "$current" -lt 100 ]; then
  pactl set-sink-volume @DEFAULT_SINK@ +5%
fi


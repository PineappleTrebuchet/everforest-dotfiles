#!/usr/bin/bash

vol=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n1 | awk -F'/' '{print $2}' | tr -d ' %')  # [web:10]

if [ "$vol" -lt 100 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%  # [web:6]
fi

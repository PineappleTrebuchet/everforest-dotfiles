#!/bin/bash
pactl set-sink-volume \@DEFAULT_SINK@ -5%

# Below lines generated w/ Perplexity
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]+%' | head -1 | tr -d '%')

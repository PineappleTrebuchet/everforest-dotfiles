#!/bin/bash

# This script is intended to stop the backlight from 
# turning off when the brightness is turned all the way down

current=$(brightnessctl g)
if [[ "$current" -le 7 ]]; then
  brightnessctl s 1
fi

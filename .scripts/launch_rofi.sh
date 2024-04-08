#!/usr/bin/env bash

# Run rofi with a permanent cache folder
# Flags for running rofi in wayland
XDG_CACHE_HOME=${HOME}/.config/rofi rofi -show combi -normal-window -steal-focus
/home/kenji/Documents/programming/scripts/flameshot_workaround.sh
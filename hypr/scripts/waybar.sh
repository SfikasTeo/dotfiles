#!/usr/bin/env bash

# Terminate running instances
killall -q .waybar-wrapped

# Wait for shutdown
sleep 1;
# while pgrep -x .waybar-wrapped >/dev/null; do sleep 1; done

# Launch the bar
waybar

#!/bin/bash

# Set Background. For multiple monitors pass multiple paths
# Possible options:
# --bg-scale FILE
# --bg-tile FILE
# --bg-center FILE
# --bg-max FILE
# --bg-fill FILE
feh --bg-fill --no-fehbg ~/Pictures/Wallpapers/goth.png ~/Pictures/Wallpapers/goth.png 

# Set up the compositor. Picom configuration can either be specified by:
# pciom --config /path/to/config else ~/.config/picom/picom.conf is used.
picom &

# System Tray (X11)

# bluetooth
blueman-applet &
# Network Manager
nm-applet &
# Pulseaudio
pasystray &

# Notifications
dunst &

# Turn on Numlock on startup
numlockx on &

# Start the legacy gnome polkit agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

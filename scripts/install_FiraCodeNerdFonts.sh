#!/bin/bash

# Download the Patched Nerd Font
curl -fLo "FiraCode.zip" \
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip

# Copy the package into ~/.local/share/fonts
mkdir -p ~/.local/share/fonts
unzip FiraCode.zip -d ~/.local/share/fonts

# remove the zip file
rm -f FiraCode.zip

# Refresh the Fc-cache
fc-cache -vf

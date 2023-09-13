# [Fedora i3](https://docs.fedoraproject.org/en-US/i3/) spin customization:
The Community maintained fedora i3 spin is a totally barebone distibution focused on a functional environment
with the **minimum** package requirements. Main Packages:
* Installed Groups:
```
Administration Tools" "Common NetworkManager Submodules" Core "Dial-up Networking support" Fonts \
"Hardware Support" "Input Methods" "Multimedia" "Printing Support" Standard base-x "i3 window manager"
```
* Additional Utility packages:
```
dmenu dunst urxvt lighdm // core packages
nmcli network-manager-applet firefox // Networking
pactl pavucontrol volumeicon // Audio
htop azote thunar // misc 
```
## Personal Customization:
1. Configure [dnf](https://github.com/SfikasTeo/Fedora/blob/main/README.md#fedora-package-management-and-dnf), [Flathub](https://github.com/SfikasTeo/Fedora/blob/main/README.md#fedora-package-management-and-dnf) and [RPM Fusion](https://github.com/SfikasTeo/Fedora/blob/main/README.md#fedora-package-management-and-dnf)
2. Add some optional packages:
```
sudo dnf remove mousepad # Remove editor

sudo dnf install \
xclip xsetroot git feh bluez-tools flameshot inxi btop lm_sensors dunst rofi bat \ # Utilities
bspwm sxhkd kitty neovim zsh flatpak lxappearance picom polybar zathura \ # Desktop packages
material-icons-fonts fira-code-fonts  # Fonts

sudo dnf group install c-development # C/C++/GDB/System traces/Valgrind
```
3. Change the default shell to zsh:
`chsh -s $(which zsh)`

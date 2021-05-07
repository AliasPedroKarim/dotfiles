#!/bin/sh

# Synchronization and update of the list of available packages on the mirrors
pacman -Syu


# Install zsh + necessary for install oh-my-zsh
pacman -S --noconfirm git curl zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install i3 and i3-status, if is not installed
pacman -S --needed --noconfirm i3 i3status

# The necessary libraries for the i3 bar
pacman -S --noconfirm python python-pip htop
pacman -S --noconfirm pamixer pacman-contrib ttf-font-awesome alsa-utils

pip3 install psutil --user

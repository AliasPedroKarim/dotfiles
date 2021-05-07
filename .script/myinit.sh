#!/bin/sh

# Synchronization and update of the list of available packages on the mirrors
pacman -Syu


# Install zsh + necessary for install oh-my-zsh
pacman -S --noconfirm git curl zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh plugin additional
#
# The additional plugins are :
#   -> history-substring-search 
#   -> colored-man-pages (is built-in)
#   -> zsh-autosuggestions 
#   -> zsh-syntax-highlighting

# history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# Install i3 and i3-status, if is not installed
pacman -S --needed --noconfirm i3 i3status

# The necessary libraries for the i3 bar
pacman -S --noconfirm python python-pip htop
pacman -S --noconfirm pamixer pacman-contrib ttf-font-awesome alsa-utils

pip3 install psutil --user


# Install compton-tryone-git
pacman -S --needed --noconfirm make gcc

cd ~
git clone https://github.com/tryone144/compton.git
cd compton

make
make install

cd ..
rm -rf compton

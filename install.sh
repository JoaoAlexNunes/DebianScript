#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y  i3 xorg 

# Lightdm can be used instead of Ly (more common)
# comment out all ly console display if choosing lightdm
sudo apt install -y lightdm lightdm-settings slick-greeter
sudo systemctl enable lightdm

# Installation for Appearance management
sudo apt install -y lxappearance

# Desktop background browser/handler 
sudo apt install -y nitrogen 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
# sudo apt install -y micro
sudo apt install -y vim

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y kitty

# Python installed package includes build-essential.
sudo apt install -y python3-pip 

# Microcode for Intel/AMD 
sudo apt install -y intel-microcode 

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-terminus fonts-cascadia-code

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

#Theme
sudo apt install arc-theme

########################################################
# End of script for default config
sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
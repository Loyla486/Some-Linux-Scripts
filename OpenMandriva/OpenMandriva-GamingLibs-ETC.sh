#!/bin/bash
# Intended for OpenMandriva, and for new installs.
# Version 2

# Ensure Curl is installed
sudo dnf -y install curl

# Install Brave (or "curl -fsS https://dl.brave.com/install.sh | sh")
# Taken and modified from "https://brave.com/linux/"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf -y install brave-browser

# Install Floorp (Flatpak version)
flatpak install flathub one.ablaze.floorp -y

# Gaming Stuff + Lutris
sudo dnf -y install lutris
sudo dnf -y install mangohud
sudo dnf -y install gamescope
sudo dnf -y install wine

# Utilities
sudo dnf -y install hardinfo2
sudo dnf -y install iperf
sudo dnf -y install neofetch
sudo dnf -y install htop
sudo dnf -y install gparted
sudo dnf -y install git

# Upgrade All Installed Packages
sudo dnf -y distro-sync

# Clean Up
sudo dnf -y clean all

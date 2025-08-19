#!/bin/bash
# Intended for OpenMandriva, and for new installs.
# Also intended for low stoarge PCs (32GB-64GB).
# Version 1

# Ensure Curl is installed
sudo dnf -y install curl

# Install Brave (or "curl -fsS https://dl.brave.com/install.sh | sh")
# Taken and modified from "https://brave.com/linux/"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf -y install brave-browser

# Install Floorp (Flatpak version)
flatpak install flathub one.ablaze.floorp -y

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

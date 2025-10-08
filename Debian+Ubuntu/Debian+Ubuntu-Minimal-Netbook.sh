#!/bin/bash
# Intended for Debian/Unbuntu Based Distros and netbooks with low storage (32GB-64GB/28GiB-58GiB)
# This is also intended for netbooks, chromebooks, and/or low end PCs..
# This will remove Firefox and Thunderbird!
# Version 5

# Start with hardinfo since newer versions requires attendance.
sudo apt install -y hardinfo

# Ensure curl is installed
sudo apt install -y curl

# Add Brave Repository (Code taken from Brave Website) https://brave.com/linux/ Could also use: "curl -fsS https://dl.brave.com/install.sh | sh"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Update Package List
sudo apt update

# Install Apps/Libraries:

# Browsers
sudo apt install -y brave-browser
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub one.ablaze.floorp -y

# Ensure Vulkan is installed
sudo apt install -y libvulkan1

# Partition Managers and related
sudo apt install -y gparted

# Utilities
sudo apt install -y lm-sensors psensor
sudo apt install -y neofetch
sudo apt install -y fastfetch
sudo apt install -y htop
sudo apt install -y git

# Upgrade All Installed Packages
sudo apt upgrade -y

# Double Check if stuff is installed after upgrade since Linux Mint sometimes disconnects in the middle of an update/upgrade.
sudo apt install -y exfatprogs
sudo apt install -y gparted
sudo apt install -y brave-browser
flatpak install flathub one.ablaze.floorp -y
sudo apt install -y libvulkan1
sudo apt install -y lm-sensors psensor
sudo apt install -y neofetch
sudo apt install -y htop
sudo apt install -y git

# Removes Firefox, Thunderbird, and the locales to save a few hundred megs.
sudo apt remove firefox* -y
sudo apt remove thunderbird* -y

# Clean Package Cache
sudo apt clean

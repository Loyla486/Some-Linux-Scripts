#!/bin/bash
# Intended for Debian/Unbuntu Based Distros and netbooks with low storage (32GB-64GB/28GiB-58GiB)
# This is also intended for netbooks, chromebooks, and/or low end PCs..
# Version 4 Beta

# Start with hardinfo since newer versions requires attendance.
sudo apt install -y hardinfo

# Ensure curl is installed
sudo apt install -y curl

# Add Brave Repository (Code taken from Brave Website) https://brave.com/linux/ Could also use: "curl -fsS https://dl.brave.com/install.sh | sh"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Floorp's PPA (Repo) is stuck on 11.30.0, so it is being commented out for now.
# Add Floorp Repository (Code taken from Floorp Website) (https://ppa.floorp.app/)
# curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
# sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'

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

#!/bin/bash
# Intended for Debian/Unbuntu Based Distros and netbooks with low storage (32GB-64GB/28GiB-58GiB)
# Version 1

# Ensure curl is installed
sudo apt install -y curl

# Add Brave Repository (Code taken from Brave Website) https://brave.com/linux/ Could also use: curl -fsS https://dl.brave.com/install.sh | sh
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Add Floorp Repository (Code taken from Floorp Website) (https://ppa.floorp.app/)
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'

# Add 32-bit Library Support, and update the package lists.
sudo dpkg --add-architecture i386
sudo apt update

# Install Apps/Libraries:

# Browsers
sudo apt install -y brave-browser
sudo apt install -y floorp

# Other Libraries
sudo apt install -y libvulkan1
sudo apt install -y libvulkan1:i386

# Utilities
sudo apt install -y hardinfo
sudo apt install -y lm-sensors psensor
sudo apt install -y neofetch
sudo apt install -y htop
sudo apt install -y gparted
sudo apt install -y git

# Upgrade All Installed Packages
sudo apt upgrade -y

# Clean Package Cache
sudo apt clean

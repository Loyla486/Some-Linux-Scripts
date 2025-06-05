#!/bin/bash
# Intended for Debian/Unbuntu Based Distros and new installs!
# Ensure curl is installed
sudo apt install -y curl

# Add Lutris Repository (Code taken from Lutris Website)
echo "deb [signed-by=/etc/apt/keyrings/lutris.gpg] https://download.opensuse.org/repositories/home:/strycore/Debian_12/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list > /dev/null
wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/lutris.gpg > /dev/null

# Add Brave Repository (Code taken from Brave Website)
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Add Floorp Repository (Code taken from Floorp Website)
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'

# Adds 32-bit packages, Update Package Lists, and install WINE + 32-bit Libraries (Mainly for Lutris).
# Code taken from Lutris Documentation
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386

# Install Apps/Libraries
# Installing GameScope this way only works on Debian for now,
# however it shouldn't hurt on an Ubuntu-Based system, it just may not install. GameScope may not work with Nvidia GPUs anyway.

# Browsers
sudo apt install -y brave-browser
sudo apt install -y floorp

# Gaming Stuff
sudo apt install -y lutris
sudo apt install -y mangohud
sudo apt install -y gamescope
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

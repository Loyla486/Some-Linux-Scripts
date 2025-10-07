#!/bin/bash
# Intended for Debian/Unbuntu Based Distros, with 128GB+ (118GiB+) of storage and for gaming.
# This is also intended for 32 bit support, gaming PCs, and/or general use PCs.
# Version 5 Beta

# Start with hardinfo since newer versions requires attendance.
sudo apt install -y hardinfo

# Ensure curl is installed
sudo apt install -y curl

# Add Lutris Repository (Code taken from Lutris Website) https://lutris.net/downloads
echo "deb [signed-by=/etc/apt/keyrings/lutris.gpg] https://download.opensuse.org/repositories/home:/strycore/Debian_12/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list > /dev/null
wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/lutris.gpg > /dev/null

# Add Brave Repository (Code taken from Brave Website) https://brave.com/linux/ Could also use: "curl -fsS https://dl.brave.com/install.sh | sh"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Floorp's PPA (Repo) is stuck on 11.30.0, so it is being commented out for now.
# Add Floorp Repository (Code taken from Floorp Website) (https://ppa.floorp.app/)
# curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
# sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'

# Adds 32-bit packages, Update Package Lists, and install WINE + 32-bit Libraries (Mainly for Lutris).
# Code taken from Lutris Documentation
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386

# Install Apps/Libraries:

# Browsers
sudo apt install -y brave-browser
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub one.ablaze.floorp -y

# Gaming Stuff
# Installing GameScope this way only works on Debian for now,
# however it shouldn't hurt on an Ubuntu-Based system, it just may not install. GameScope may not work with Nvidia GPUs anyway.
sudo apt install -y lutris
sudo apt install -y mangohud
sudo apt install -y gamescope
sudo apt install -y libvulkan1
sudo apt install -y libvulkan1:i386

# Partition Managers and related
# sudo apt install -y partitionmanager
# sudo apt install -y kde-partitionmanager
# sudo apt install -y gnome-disk-utility
sudo apt install -y gparted
sudo apt install -y exfatprogs

# Utilities
sudo apt install -y lm-sensors psensor
sudo apt install -y neofetch
sudo apt install -y fastfetch
sudo apt install -y htop
sudo apt install -y git

# Upgrade All Installed Packages
sudo apt upgrade -y

# Double Check if stuff is installed after upgrade since Mint sometimes disconnects in the middle of an update/upgrade.
# sudo apt install -y partitionmanager
# sudo apt install -y kde-partitionmanager
# sudo apt install -y gnome-disk-utility
sudo apt install -y gparted
sudo apt install -y exfatprogs
sudo apt install -y lutris
sudo apt install -y mangohud
sudo apt install -y gamescope
sudo apt install -y libvulkan1
sudo apt install -y libvulkan1:i386
sudo apt install -y brave-browser
flatpak install flathub one.ablaze.floorp -y
sudo apt install -y hardinfo
sudo apt install -y lm-sensors psensor
sudo apt install -y neofetch
sudo apt install -y htop
sudo apt install -y git

# Clean Package Cache
sudo apt clean

# Give users the option to remove Firefox and Thunderbird.
# echo Press any key to remove Firefox and Thunderbird
read -p " (1/3) Press any key to remove Firefox and Thunderbird, otherwise press CTRL+C or close the window"
read -p " (2/3) Press any key to remove Firefox and Thunderbird, otherwise press CTRL+C or close the window"
read -p " (3/3) LAST CHANCE! Press any key to remove Firefox and Thunderbird, otherwise press CTRL+C or close the window"
sudo apt remove firefox* -y
sudo apt remove thunderbird* -y
sudo apt clean

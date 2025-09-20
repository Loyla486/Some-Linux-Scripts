#!/bin/bash
# run in your home/<user> directory!
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install curl -y

# Package names from: https://flashpointarchive.org/datahub/Linux_Support#Dependencies
# Install needed packages
sudo apt install curl libgtk-3-0 libnss3 php 7zip wine wine64 wine32 libxcomposite1:i386 libpulse0:i386 -y

# pulseaudio / pipewire-pulse should hopfully beinstalled

# Download and install Flashpoint
curl https://download.flashpointarchive.org/upload/fp14.0.2_lin_main_20250820.7z --remote-name
7zr x fp*_lin_main_*.7z -oFlashpoint

# Attempt to make a shortcut on the desktop
./Flashpoint/setup-desktop-entry.sh

# Optional Stuff
# https://download.flashpointarchive.org/upload/fp_lin_libs_20250722.7z
# libgtk2.0-0 libxt6

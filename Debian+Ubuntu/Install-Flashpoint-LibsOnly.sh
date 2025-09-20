#!/bin/bash
# run in your home/<user> directory!
sudo dpkg --add-architecture i386 && sudo apt update
# sudo apt install curl -y

# Package names from: https://flashpointarchive.org/datahub/Linux_Support#Dependencies
# Install needed packages
sudo apt install libgtk-3-0 libnss3 php 7zip wine wine64 wine32 libxcomposite1:i386 libpulse0:i386 -y

# Optional Stuff
# https://download.flashpointarchive.org/upload/fp_lin_libs_20250722.7z
# sudo apt install libgtk2.0-0 libxt6
# pulseaudio / pipewire-pulse should hopfully be installed

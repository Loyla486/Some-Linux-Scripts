#!/bin/bash
# USE AT YOUR OWN RISK, BACKUP YOUR DATA BEFORE PRECEDING!
# IF YOU ARE USING A LAPTOP/BATTERY POWERED DEVICE, PLUG IT IN TO PREVENT POSSIBLE DISRUPTION, SINCE IT MIGHT TAKE A WHILE!
# THIS SCRIPT IS INTENDED FOR MAINLINE DEBIAN, NOT FORKS!
# YOU WILL HAVE TO ATTEND THE UPGRADE EVERY NOW AND THEN TO PRESS ENTER AND/OR RE-ENTER YOUR SUDO PASSWORD!
# You can try to reduce this by press Enter/Return a few times during upgrade
sudo apt clean -y
sudo apt autoremove -y
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt --purge autoremove -y
sudo apt autoclean -y
mkdir ~/apt
sudo cp /etc/apt/sources.list ~/apt
sudo cp -r /etc/apt/sources.list.d/ ~/apt
sudo sed -i 's/bookworm/trixie/g' /etc/apt/sources.list
sudo sed -i 's/bookworm/trixie/g' /etc/apt/sources.list.d/*
sudo apt update -y
sudo apt upgrade --without-new-pkgs -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo reboot

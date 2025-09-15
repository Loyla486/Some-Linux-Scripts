#!/bin/bash
# USE AT YOUR OWN RISK, BACKUP YOUR DATA BEFORE PRECEDING!
# IF YOU ARE USING A LAPTOP/BATTERY POWERED DEVICE, PLUG IT IN TO PREVENT POSSIBLE DISRUPTION, SINCE IT MIGHT TAKE A WHILE!
# THIS SCRIPT IS INTENDED FOR MAINLINE DEBIAN, NOT FORKS!
# YOU MAY HAVE TO ATTEND THE UPGRADE EVERY NOW AND THEN TO PRESS ENTER AND/OR RE-ENTER YOUR SUDO PASSWORD!
# You can try to reduce this by press Enter/Return a few times during upgrade
# If you are on XFCE you may need to reinstall Mugshot (sudo apt install mugshot -y)
sudo apt update -y
sudo apt full-upgrade -y
mkdir ~/apt
sudo cp /etc/apt/sources.list ~/apt
sudo cp -r /etc/apt/sources.list.d/ ~/apt
sudo sed -i 's/bookworm/trixie/g' /etc/apt/sources.list
sudo sed -i 's/bookworm/trixie/g' /etc/apt/sources.list.d/*
sudo apt update -y
sudo apt full-upgrade -y
sudo reboot

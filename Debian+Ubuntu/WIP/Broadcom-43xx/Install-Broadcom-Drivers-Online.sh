#!/bin/bash
# from https://askubuntu.com/questions/612255/wireless-not-working-on-dell-latitude-e6400-with-ubuntu-14-04-2
# Make sure you are connected to ethernet first.
sudo apt-get update
sudo apt-get install firmware-b43-installer
# from https://forums.linuxmint.com/viewtopic.php?p=1866927&sid=b393b85a19e94f8b24235536ec4c31c4#p1866927
sudo apt remove firmware-b43-installer && sudo apt install --reinstall bcmwl-kernel-source

#!/bin/bash
# combo of stuff from https://askubuntu.com/questions/612255/wireless-not-working-on-dell-latitude-e6400-with-ubuntu-14-04-2
# and https://forums.linuxmint.com/viewtopic.php?p=1866927&sid=b393b85a19e94f8b24235536ec4c31c4#p1866927
# Make sure you are connected to ethernet first.
sudo apt update
sudo apt remove firmware-b43-installer && sudo apt install --reinstall bcmwl-kernel-source

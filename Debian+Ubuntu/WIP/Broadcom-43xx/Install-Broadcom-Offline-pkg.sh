#!/bin/bash
# from https://askubuntu.com/questions/612255/wireless-not-working-on-dell-latitude-e6400-with-ubuntu-14-04-2
# You must download the needed packages first!
$ cd ~
$ sudo dpkg -i b43-fwcutter*
$ tar xfvj broadcom-wl-5.100.138.tar.bz2
$ sudo b43-fwcutter -w /lib/firmware broadcom-wl-5.100.138/linux/wl_apsta.o

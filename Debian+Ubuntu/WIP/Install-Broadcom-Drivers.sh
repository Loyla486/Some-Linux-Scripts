#!/bin/bash
# from https://askubuntu.com/questions/612255/wireless-not-working-on-dell-latitude-e6400-with-ubuntu-14-04-2
# Make sure you are connected to ethernet first.
$ sudo apt-get update
$ sudo apt-get install firmware-b43-installer
# or
$ cd ~
$ sudo dpkg -i b43-fwcutter*
$ tar xfvj broadcom-wl-5.100.138.tar.bz2
$ sudo b43-fwcutter -w /lib/firmware broadcom-wl-5.100.138/linux/wl_apsta.o

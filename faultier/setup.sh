#!/bin/bash

# updates
sudo apt-get update
sudo apt-get upgrade

# install software
sudo apt-get install vim mpc mpd

# setup ympd
mkdir /home/pi/ympd
cd /home/pi/ympd
wget https://www.ympd.org/downloads/ympd-1.2.3-armhf.tar.bz2
tar -xvf ympd-1.2.3-armhf.tar.bz2

# TODO setup network mount

#!/bin/bash

cd /home/pi
git clone https://github.com/AberDerBart/mpdScheduler

cd /home/pi/mpdScheduler

sudo apt-get install python-pip
sudo pip install parse
sudo pip install python-mpd2

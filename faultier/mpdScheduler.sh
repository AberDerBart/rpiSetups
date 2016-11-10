#!/bin/bash

cd /home/pi
git clone https://github.com/AberDerBart/mpdScheduler

cd /home/pi/mpdScheduler

sudo apt-get install python-pip
sudo pip install parse
sudo pip install python-mpd2

echo "[Unit]
Description=mpdScheduler
Requires=mpd.service

[Service]
ExecStart=/usr/bin/python /home/pi/mpdScheduler/main.py

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/mpdScheduler.service

sudo systemctl daemon-reload
sudo systemctl enable mpdScheduler.service
sudo systemctl start mpdScheduler.service

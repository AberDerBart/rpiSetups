#!/bin/bash

# setup ympd
mkdir /home/pi/ympd
cd /home/pi/ympd
wget https://www.ympd.org/downloads/ympd-1.2.3-armhf.tar.bz2
tar -xvf ympd-1.2.3-armhf.tar.bz2

echo "[Unit]
Description=ympd

[Service]
ExecStart=/home/pi/ympd/ympd --webport 80

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/ympd.service

sudo systemctl daemon-reload
sudo systemctl enable ympd.service
sudo systemctl start ympd.service

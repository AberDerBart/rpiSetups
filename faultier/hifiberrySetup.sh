#!/bin/bash

# install amp
echo 'dtoverlay=hifiberry-amp' | sudo tee -a /boot/config.txt
sudo sed -i 's/dtparam=audio=on/drparam=audio=off/g' /boot/config.txt
echo 'pcm.!default {
  type hw card 0
}
ctl.!default {
  type hw card 0
}' | sudo tee /etc/asound.conf
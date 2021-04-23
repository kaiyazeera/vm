#!/bin/bash
echo "<<< Update Guest OS >>>"
sudo apt-get update
sudo apt-get upgrade -y

echo "<<< Installing desktop environment >>>"
sudo apt-get install -y ubuntu-desktop

echo "<<< Installing Zoom >>>"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install -y ./zoom_amd64.deb

echo "<<< Installing Guest Additions >>>"
wget http://download.virtualbox.org/virtualbox/6.1.20/VBoxGuestAdditions_6.1.20.iso -P /tmp
sudo mount -o loop /tmp/VBoxGuestAdditions_6.1.20.iso /mnt
sudo sh /mnt/VBoxLinuxAdditions.run

echo "<<< Rebooting machine >>>"
sudo reboot

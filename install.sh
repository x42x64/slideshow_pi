#!/bin/bash

# INSTALLING SLIDESHOW PI
echo "INSTALLING SLIDESHOW PI"
echo "Updating apt"
apt-get update 

echo "Installing feh"
apt-get -y install feh

pathAutostart=/home/pi/.config/lxsession/LXDE-pi/autostart
if [ -e $pathAutostart ]; then
   echo "autostart already exists - removing it"
   rm /home/pi/.config/lxsession/LXDE-pi/autostart
fi

echo "creating a symbolic link to autostart file"
ln -s $PWD/autostart /home/pi/.config/lxsession/LXDE-pi/autostart



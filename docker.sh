#!/bin/bash

echo "################ system update ###############"   
sudo apt update

echo "******************** docker installation start  **************"
sudo apt install docker.io -y

echo "@@@@@@@@@@@@ docker installation done @@@@@@@@@@@"

echo "!!!!!! user adding to docker group !!!!!!"
sudo usermod -aG docker $USER

sudo cat /etc/group

echo " docker  and system restarting"
sudo systemctl restart docker
sudo reboot

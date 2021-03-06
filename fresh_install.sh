#!/bin/sh

# Run this script in your home folder on Ubuntu 16.04

# Print out Linux distribution and kernel version
cat /etc/*-release
uname -a

# Upgrade packages that are available to update
sudo apt-get update
sudo apt-get -y upgrade

# Linux basic stuff
sudo apt-get install -y terminator zsh gparted unity-tweak-tool chromium-browser 

wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -                                                                                                                                           18-04-20 - 20:11:55
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install -y ubuntu-tweak

# Create basic folders
mkdir Development
mkdir Tools

# Development Tools
sudo apt-get install -y build-essential git nodejs npm python3-pip virtualenv

# Upgrade nodejs to latest stable version
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# you also need to run this command after
# sudo ln -sf /usr/local/n/versions/node/<VERSION>/bin/node /usr/bin/nodejs


# Media Tools
sudo apt-get install -y vlc gimp inkscape feh blender


# i3 wm
sudo apt-get install -y i3
sudo npm install -g i3-style

# android tools
sudo apt-get install -y android-tools-adb
sudo apt-get install -y android-tools-fastboot
sudo usermod -aG plugdev $LOGNAME

# git settings
git config --global push.default simple

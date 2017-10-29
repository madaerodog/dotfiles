#!/bin/sh

# Print out Linux distribution and kernel version
cat /etc/*-release
uname -a

# Upgrade packages that are available to update
sudo apt-get update
sudo apt-get -y upgrade

# Linux basic stuff
sudo apt-get install -y chromium-browser terminator

# Development Tools
sudo apt-get install -y build-essential git nodejs npm python3-pip virtualenv

# Upgrade nodejs to latest stable version
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# you also need to give this command after
# sudo ln -sf /usr/local/n/versions/node/<VERSION>/bin/node /usr/bin/nodejs


# Media Tools
sudo apt-get install -y vlc handbrake gimp inkscape feh blender


# i3 wm
sudo apt-get install -y i3
sudo npm install -g i3-style


# gekko
cd Development
git clone git://github.com/askmike/gekko.git
cd gekko
npm install --only=production

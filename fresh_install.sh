#!/bin/sh

# Print out Linux distribution and kernel version
cat /etc/*-release
uname -a

# Upgrade packages that are available to update
sudo apt-get update
sudo apt-get -y upgrade

# Development Tools
sudo apt-get install -y build-essential git nodejs
# Media Tools
sudo apt-get install -y vlc handbrake gimp inkscape feh blender

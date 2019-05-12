#!/bin/bash
cp bash_alias ~/.bash_aliases
wget -O atom-amd64.deb https://atom.io/download/deb
sudo apt update && apt upgrade -y && apt -y install $(cat package_list) && dpkg -i atom-amd64.deb
cd /etc/ssh/
sudo dpkg-reconfigure openssh-server && apt-updater


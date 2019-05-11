#!/bin/bash
cp bash_alias ~/.bash_aliases
apt update
apt upgrade -y
apt -y install $(cat package_list)
wget -O atom-amd64.deb https://atom.io/download/deb
dpkg -i atom-amd64.deb
cd /etc/ssh/
dpkg-reconfigure openssh-server
apt-updater

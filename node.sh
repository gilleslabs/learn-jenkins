#!/bin/sh

sudo sed -i "s/PermitRootLogin without-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo service ssh restart
sudo apt-get install sshpass -y

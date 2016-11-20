#!/bin/sh

#### Installaing ansible
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y


sudo apt-get install sshpass -y

#### Generating knowhost key for Ansible
sudo ssh-keygen -t rsa -C "gtosi@soprasteria.com" -N "" -f /root/.ssh/id_rsa

#### Pushing key to ansible node
sudo sshpass -p 'vagrant' ssh-copy-id -o StrictHostKeyChecking=no root@10.154.128.52

#### Installing Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins -y

#### Installing ServerSpec
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:brightbox/ruby-ng -y
sudo apt-get update -y
sudo apt-get install ruby2.3 -y
sudo gem install serverspec rake

##### Installing git
sudo apt-get install git -y

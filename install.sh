#!/bin/sh

sudo apt-get update --yes
sudo apt-get install --yes apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update --yes

sudo apt-get purge --yes lxc-docker

sudo apt-get install --yes linux-image-extra-$(uname -r)
sudo apt-get install --yes docker-engine=1.9.1-0~trusty

sudo service docker start

# Install some other extrs I'll need later
sudo apt-get install --yes python-mysqldbn htop vnstat

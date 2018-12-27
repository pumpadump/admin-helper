#!/bin/bash
#Simple script that installs some essential tools and docker + docker-compose on an ubuntu host
apt update
echo "y" | apt upgrade
echo "y" | apt autoremove
echo "y" | apt install htop nethogs apt-transport-https ca-certificates curl software-properties-common
#Docker, insure newest version of docker-compose is set in url
echo "y" | apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
echo "y" | add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "y" | apt-get update
echo "y" | apt-get install docker-ce
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

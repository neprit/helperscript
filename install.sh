#!/bin/bash

#upto date repository
sudo apt update
#Install unzip, not installed by default
sudo apt install unzip
# Remove wrong versions of docker if any 
sudo apt-get remove docker docker-engine docker.io containerd runc 
#install docker
sudo apt install docker.io 
#install docker-compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#enable docker service on startup 
sudo systemctl enable docker.service
sudo systemctl start docker.service 
#add user to the docker groups
sudo usermod -aG docker azureuser


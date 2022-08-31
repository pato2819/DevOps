#!/bin/bash
sudo apt update -y 
sudo apt install docker -y
sudo systemctl start docker
sudo groupadd docker 
sudo usermod -aG docker ${whoami}
sudo gpasswd -a {USER} docker
sudo systemctl restart docker
sudo systemctl enable docker 
docker ps
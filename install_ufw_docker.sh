#!/bin/bash
echo "+ Download"
sudo wget -O /usr/local/bin/ufw-docker   https://github.com/chaifeng/ufw-docker/raw/master/ufw-docker
sudo chmod +x /usr/local/bin/ufw-docker
echo "+ Install"
sudo ufw-docker install
echo "+ Restart ufw"
sudo systemctl restart ufw
#!/bin/bash
curl -fsSL get.docker.com -o 99-get-docker.sh
sudo chmod +x ./99-get-docker.sh && sudo ./99-get-docker.sh
sudo usermod -aG docker $(whoami)
echo "Relogin for enable docker group"

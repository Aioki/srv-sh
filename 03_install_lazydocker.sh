#!/bin/bash
LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
mkdir lazydocker-temp
tar xf lazydocker.tar.gz -C lazydocker-temp
sudo mv lazydocker-temp/lazydocker /usr/bin
rm -rf lazydocker.tar.gz lazydocker-temp
#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install -y qemu-guest-agent
sudo systemctl enable qemu-guest-agent && sudo systemctl start qemu-guest-agent
sudo reboot now

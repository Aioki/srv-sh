#!/bin/bash
sudo ufw route allow proto tcp from any to any port 81 comment "Admin HTTP to Ngnix Proxy Manager"

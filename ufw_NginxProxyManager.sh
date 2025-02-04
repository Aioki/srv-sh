#!/bin/bash
sudo ufw route allow proto tcp from any to any port 80 comment "HTTP to Ngnix Proxy Manager"
sudo ufw route allow proto tcp from any to any port 443 comment "HTTPS to Ngnix Proxy Manager"
#!/bin/bash
sudo ufw route allow proto udp from any to any port 51820 comment "Wireguard"
docker run -d \
  --name=wg-easy \
  -e LANG=ru \
  -e WG_HOST=example.com \
  -e PASSWORD_HASH='%ENTER YOU HASH HERE' \
  -v /opt/compose/data/.wg-easy:/etc/wireguard \
  -p 51820:51820/udp \
  -p 51821:51821/tcp \
  -h wg-easy \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --sysctl="net.ipv4.ip_forward=1" \
  --restart unless-stopped \
  ghcr.io/wg-easy/wg-easy
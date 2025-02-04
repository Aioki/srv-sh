#!/bin/bash
docker run -d \
    --restart unless-stopped \
    --name=npm \
    -h npm \
    -p 80:80 \
    -p 81:81 \
    -p 443:443 \
    -v /opt/compose/npm/data:/data \
    -v /opt/compose/npm/letsencrypt:/etc/letsencrypt \
    jc21/nginx-proxy-manager:latest

#!/bin/bash
docker run \
    -d \
    -p 8000:8000 \
    --name portainer \
    -h portainer \
    --restart=always \
    --security-opt no-new-privileges:true \
    -v /etc/localtime:/etc/localtime:ro \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /opt/compose/data/portainer_data:/data \
    -e VIRTUAL_HOST=example.com \
    -e VIRTUAL_PORT=9000 \
    portainer/portainer-ce:latest \
    -H unix:///var/run/docker.sock

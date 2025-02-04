docker run -d \
  --restart=always \
  -p 3001:3001 \
  -v /opt/compose/data/kuma:/app/data \
  --name uptime-kuma \
  louislam/uptime-kuma:1
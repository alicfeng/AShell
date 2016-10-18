docker run -d -it \
  --name=ptunnel \
  -e IP="59.111.116.168" \
  -e MIDDLE_PORT=8001 \
  -p 8001:8001 \
  --restart=always \
  reg.zuolan.me/zuolan/ptunnel:local


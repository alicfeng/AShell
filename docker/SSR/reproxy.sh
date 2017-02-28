#/bin/bash
cd /home/alic/tutorial/Github/Alic_env/docker/SSR/
docker-compose kill 
docker-compose rm -f
docker-compose up -d
notify-send "docker" "Alic~ ptunnel重启完毕~"
echo "--- proxy containers status ---"
docker-compose ps



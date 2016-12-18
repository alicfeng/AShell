#/bin/bash
cd /home/alic/tutorial/Github/Alic_env/docker/SSR/
docker-compose kill 
docker-compose rm -f
docker-compose up -d
echo "--- proxy containers status ---"
docker-compose ps



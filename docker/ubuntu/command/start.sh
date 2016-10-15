#!/bin/bash

docker run -it \
--net="host" \
-p 8088:8088 \
-v /home/alic/www/:/www/ \
-v /home/alic/tutorial/Github/Alic_env/docker/ubuntu/nginx/:/etc/nginx/sites-enabled/ \
-v /media/alic/asus/data/docker/ubuntu/mysql:/var/lib/mysql \
-v /home/alic/tutorial/Github/Alic_env/docker/ubuntu/mysql/my.cnf:/etc/mysql/my.cnf \
alic/ubuntu:14.04

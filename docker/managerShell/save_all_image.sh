#!/bin/bash
docker_names=($(docker images | awk 'NR>1 {print $1}'))
docker_versions=($(docker images | awk 'NR>1 {print $2}'))
docker_ids=($(docker images | awk 'NR>1 {print $3}'))
length=${#docker_ids[@]}

for ((i=0; i<$length; i ++))  
do  
    docker save ${docker_ids[$i]} > /media/alic/asus/Linux/iso/Docker/images/${docker_names[$i]////-}.${docker_versions[$i]}.tar
done  

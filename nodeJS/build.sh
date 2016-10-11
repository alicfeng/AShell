#!/bin/bash

# install run date
echo -e "\n"$(date "+%Y-%m-%d %H:%M:%S") >> build.log

#update - source.list
#sudo apt-get  update -y

#install nodejs

sudo apt-get install nodejs -y >> build.log

#install npm
sudo apt-get install npm -y >> build.log

#version
echo "NodeJS Version -> nodejs -v"
nodejs -v
echo "npm Version -> npm -v"
npm -v


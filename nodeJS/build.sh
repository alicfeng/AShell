#!/bin/bash
#
author 
#
# install run date
echo -e "\n"$(date "+%Y-%m-%d %H:%M:%S") >> build.log

#update - source.list
#sudo apt-get update -y

#install nodejs
sudo apt-get install nodejs -y >> build.log
notify-send "install NodeJS" "Hello Alic☺安装NodeJS完毕~"

#install npm
sudo apt-get install npm -y >> build.log
notify-send "install npm" "Hello Alic☺安装npm完毕~"

#install express-generator
sudo npm install -g express-generator >> build.log
notify-send "install npm" "Hello Alic☺安装express-generator完毕~"

#version
echo "NodeJS Version is $(nodejs -v)"
echo "npm Version is $(npm -v)"


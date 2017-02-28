#!/bin/bash

#Author Alic
#价值源于技术，贡献源于分享

# install run date
echo -e "\n"$(date "+%Y-%m-%d %H:%M:%S") >> build.log
echo "terminal is executing program command,Please waiting..."

#update - source.list
sudo apt-get update -y >> build.log
notify-send "install NodeJS" "Hello Alic☺update source.list completely~"

#install nodejs
sudo apt-get install nodejs -y >> build.log
notify-send "install NodeJS" "Hello Alic☺installed NodeJS completely~"

#install npm
sudo apt-get install npm -y >> build.log
notify-send "install npm" "Hello Alic☺installed npm completely~"

#install express-generator
sudo npm install -g express-generator >> build.log
notify-send "install npm" "Hello Alic☺installed express-generator completely~"

#install bower
sudo npm install bower -g >> build.log
notify-send "install npm" "Hello Alic☺installed express-generator completely~"

#nodejs shell handler
#说明 Ubuntu下提示/usr/bin/env: node: 没有那个文件或目录
#原因 由于Ubuntu下已经有一个名叫node的库，因此Node.js在ubuntu下默认叫nodejs，需要额外处理一下
#解决方案 sudo ln -s /usr/bin/nodejs /usr/bin/node
if [ ! -f /usr/bin/nodejs ];then
  sudo ln -s /usr/bin/nodejs /usr/bin/node
fi

#version
echo "NodeJS Version is $(nodejs -v)"
echo "npm Version is $(npm -v)"
echo "bower Version is $(bower -v)"



#!/bin/bash

#更新源
#sudo apt-get update -y

#安装MySQL
sudo apt-get install mysql-server mysql-client -y

#安装nginx
sudo apt-get install nginx -y 

#安装PHP7
sudo apt-get -y install php7.0-fpm php7.0 -y

##################################################
# PHP fix_pathinfo 潜在安全漏洞修复
sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini
sudo systemctl restart php7.0-fpm
##################################################



#nginx支持php - config
#location ~ \.php$ {
#                include snippets/fastcgi-php.conf;
#                fastcgi_pass unix:/run/php/php7.0-fpm.sock;
#        }



#--------------------------------------------------#
#ubuntu 16.04 使用 systemctl 管理服务。
#LNMP 中 service 名称分别为 nginx、mysql、php7.0-fpm
#启动：systemctl start service
#停止：systemctl stop service
#重载：systemctl reload service
#重启：systemctl restart service
#查看状态：systemctl status service
#开启自启动：systemctl enable service
#关闭自启动：systemctl disable service
#--------------------------------------------------#












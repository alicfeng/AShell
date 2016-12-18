FROM ubuntu:14.04
MAINTAINER alic <1096105191@qq.com>

# basic env
RUN apt-get update && apt-get -y install curl libcurl3 

# apache2
RUN apt-get install -y apache2

# php5
RUN apt-get install -y apache2 php5 php5-gd php-xml-parser php5-intl php5-sqlite php5-mysql php5-curl

# mysql
RUN apt-get install -y mysql-server

# smbclient
RUN apt-get install -y smbclient
#	&& apt-get install -y apache2 php5 php5-gd php-xml-parser php5-intl php5-sqlite php5-mysql smbclient php5-curl mysql-server

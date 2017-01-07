FROM alic/owncloud:one
MAINTAINER alic <1096105191@qq.com>


# basic env
RUN apt-get -y install curl libcurl3 wget

# apache2
RUN apt-get install -y apache2 \
  && a2enmod rewrite \
  && a2enmod headers 

# php5
RUN apt-get install -y php5 php5-gd php-xml-parser php5-intl php5-sqlite php5-mysql php5-curl

# mysql
RUN apt-get install -y mysql-server 

# smbclient
RUN apt-get install -y smbclient

#获取ownCloud已经编译好的包
RUN wget -P /root/ http://sise.samego.com/source/Linux/software/64-os/server/owncloud-%E4%BA%91%E7%9B%98/owncloud-9.0.2.tar.bz2 \
  && tar xjf /root/owncloud-9.0.2.tar.bz2 -C /var/www/ \
  && mkdir /var/www/owncloud/data \
  && chmod 770 /var/www/owncloud/data \
  && mkdir /var/www/owncloud/data/data \
  && mkdir /var/www/owncloud/data/config \
  && mkdir /var/www/owncloud/data/apps

#config
RUN sed -i "s/Listen 80/Listen 8028/g" /etc/apache2/ports.conf \
  && mv /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/default.conf \
  && sed -i "s/*:80/*:8028/g" /etc/apache2/sites-enabled/default.conf \
  && sed -i "s/# Global configuration/# Global configuration \nServerName 127.0.0.1/g" /etc/apache2/apache2.conf \
  && sed -i  "s/html/owncloud/g" /etc/apache2/sites-enabled/default.conf

# server to restart
CMD ["/etc/init.d/apache2 restart"]
#CMD ["service mysql start"]





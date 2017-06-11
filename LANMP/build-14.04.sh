#!/bin/bash
# mysql
apt-get install mysql-server mysql-client -y

# apache2
apt-get install apache2 -y
service apache2 stop

# nginx
apt-get install nginx -y

# php
apt-get install php5 php5-fpm

# other
apt-get install php5-gd curl libcurl3 libcurl3-dev php5-curl php5-dev libpcre3-dev && \
php5 libapache2-mod-php5 php5-mysql  php5-gd php5-intl php-pear php5-imagick && \
php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode && \
php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-cgi libapache2-mod-auth-mysql

# nginx config
#location ~ \.php$ {
#      try_files $uri =404;
#      fastcgi_split_path_info ^(.+\.php)(/.+)$;
#      fastcgi_pass unix:/var/run/php5-fpm.sock;
#      fastcgi_index index.php;
#      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
#      include fastcgi_params;
#  }

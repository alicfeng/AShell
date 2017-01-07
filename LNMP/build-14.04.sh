#!/bin/bash

#php5
#mysql5.6

#mysql
apt-get install mysql-server mysql-client php5-mysql  -y

#nginx
apt-get install nginx -y

#php
apt-get install php5 php5-fpm

#other
apt-get install php5-gd curl libcurl3 libcurl3-dev php5-curl php5-dev libpcre3-dev


commit  commit commit
#location ~ \.php$ {
#      try_files $uri =404;
#      fastcgi_split_path_info ^(.+\.php)(/.+)$;
#      fastcgi_pass unix:/var/run/php5-fpm.sock;
#      fastcgi_index index.php;
#      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
#      include fastcgi_params;
#  }

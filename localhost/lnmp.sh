#!/bin/bash
if [ ${UID} == 0 ]; then
  case $1 in
      start)
          /etc/init.d/nginx start #nginx
          /etc/init.d/mysql start #mysql
          /etc/init.d/php7.0-fpm start #php
          ;;
      stop)
          /etc/init.d/nginx stop #nginx
          /etc/init.d/mysql stop #mysql
          /etc/init.d/php7.0-fpm stop #php
          ;;
      restart)
          /etc/init.d/nginx restart #nginx
          /etc/init.d/mysql restart #mysql
          /etc/init.d/php7.0-fpm restart #php
          ;;
          *)
          echo "Usage: $0 (start|stop|restart)"
          ;;
  esac
  exit 0
else
	echo "没有权限（是不是少了sudo呢）~~~"
fi

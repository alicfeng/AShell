#/bin/bash

# start 
start_cloudstack_management(){
  # run mysql
  docker run -it --name cloudstack-mysql --privileged=true \
  -e MYSQL_ROOT_PASSWORD=cloudstack \
  -v /media/alic/asus/data/docker/cloudstack/mysql/:/var/lib/mysql \
  -d \
  docker.io/mysql:5.5 \
  >/dev/null 2>&1


  # run cloudstack
  docker run -it --name cloudstack \
  --link cloudstack-mysql:mysql \
  -p 8080:8080 \
  -p 8250:8250 \
  -d \
  docker.io/cloudstack/management_centos6 \
  >/dev/null 2>&1
  echo "start cloudstack management server successful" | toilet -f term -F border --gay
  echo "Please visit this link http://cloudstack.samego.com/client"
}

# stop
stop_cloudstack_management(){
  docker rm cloudstack cloudstack-mysql -f >/dev/null 2>&1 
  echo "stop cloudstack management server successful" | toilet -f term -F border --gay
}

# status
status_cloudstack_management(){
  docker ps
}

#关于
about(){
clear
cat <<EOF
$(figlet "Alic CloudStack")
EOF
}

clear && about
case $1 in
    start)
        start_cloudstack_management
        ;;
    stop)
        stop_cloudstack_management
        ;;
    restart)
        stop_cloudstack_management
        start_cloudstack_management
        ;;
    status)
        status_cloudstack_management
        ;;
    *)
        echo "Usage: $0 (start|stop|restart)"
        ;;
esac

exit 0

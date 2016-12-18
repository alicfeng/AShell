#!/bin/bash
# 端口配置
ports=(
10001
10002
10003
10004
)


for port in ${ports[*]}
do
	echo "端口 -> $port"
  echo "详细情况:"
  sudo iptables -n -v -L -t filter| grep "$port"
  echo "大概情况:"
  sudo iptables -n -v -L -t filter| grep "$port" | awk '{print $2}'
  echo "========================================================================================================"
done




#sudo iptables -I INPUT -d 172.16.168.128 -p tcp --dport 10001
#sudo iptables -I OUTPUT -d 172.16.168.128 -p tcp --dport 10001
#sudo iptables -I INPUT -d 172.16.168.128 -p tcp --dport 10002
#sudo iptables -I OUTPUT -d 172.16.168.128 -p tcp --dport 10002
#sudo iptables -I INPUT -d 172.16.168.128 -p tcp --dport 10003
#sudo iptables -I OUTPUT -d 172.16.168.128 -p tcp --dport 10003
#sudo iptables -I INPUT -d 172.16.168.128 -p tcp --dport 10004
#sudo iptables -I OUTPUT -d 172.16.168.128 -p tcp --dport 10004

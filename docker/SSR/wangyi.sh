#!/bin/bash
# ---------- 配置信息开始----------
#变量
#set password fenglican 
# expect脚本设置 
#set timeout -1
#  ----------配置信息结束----------

#spawn ssh -p 8001 -ND 172.16.168.1:10001 root@localhost > /dev/null 2>&1
#expect "*password:"
#send "$password\r"
#interact


nohup ssh -p 8001 -ND 172.16.168.1:10001 root@localhost > /dev/null 2>&1 &

nohup ssh -p 8001 -ND 172.16.168.1:10002 root@localhost > /dev/null 2>&1 &

nohup ssh -p 8001 -ND 172.16.168.1:10003 root@localhost > /dev/null 2>&1 &

nohup ssh -p 8001 -ND localhost:10005 root@localhost > /dev/null 2>&1 &

nohup ssh -p 8001 -ND 172.16.168.1:10004 root@localhost > /dev/null 2>&1 &

#sudo iptables -I INPUT -d 172.16.168.128 -p tcp --dport 10002







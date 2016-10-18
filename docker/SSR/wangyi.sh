#!/usr/bin/expect
# ---------- 配置信息开始----------
#变量
set password fenglican 
# expect脚本设置 
set timeout -1
#  ----------配置信息结束----------

spawn ssh -p 8001 -ND 172.16.168.128:10001 root@localhost > /dev/null 2>&1
expect "*password:"
send "$password\r"
interact







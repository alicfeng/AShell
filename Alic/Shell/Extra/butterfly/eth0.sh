#!/usr/bin/expect -f
spawn ./aecium -h 172.16.1.180 -u 1440124114 -p fenglican -d enp4s0f2 -f
expect "):"
send "1\r"
interact

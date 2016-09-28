#!/usr/bin/expect -f
#spawn /home/alic/Shell/Extra/butterfly/aecium -h 172.16.1.180 -u 1541002230 -p 185647 -d eth0 -f
spawn /home/alic/Shell/Extra/butterfly/aecium -h 172.16.1.180 -u 1440124114 -p fenglican -d eth0 -f
expect "):"
send "1\r"
interact

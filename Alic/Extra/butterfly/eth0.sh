#!/usr/bin/expect -f
spawn ./Extra/butterfly/aecium -h 172.16.1.180 -u 1440124114 -p 020016 -d eth0 -f
expect "):"
send "1\r"
interact

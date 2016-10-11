local_ip=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
string="地址"
rep="localhost"
echo ${local_ip/string/rep}



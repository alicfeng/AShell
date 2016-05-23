#!/bin/bash
#备份数据库的目录
BAKDIR=/home/alic/WorkSpace/Data/backup/mysql/$(date +%Y-%m-%d)
#数据库名称
MYSQLDB=0
read -p " alic,你要备份哪一个数据库，叫咩名呢？ : " MYSQLDB
#用户名
USERNAME=root

#权限控制
if [ ${UID} -eq 0 ]
then
#判断备份数据库存放的目录是否存在
  if [ ! -x $BAKDIR  ]
  then
  echo 目录不存在
  #既然不存在那就创建一个目录 创建多级目录的时候参数为-p
  mkdir -p $BAKDIR
  if [ $? -eq 0 ]
   then
   echo 创建目录成功
   #一直都是傻777
   chmod 777 /home/alic/WorkSpace/Data && chmod -R 777 /home/alic/WorkSpace/Data/*
   else
   echo 创建目录失败
   exit 0
   fi
  fi
  echo 大哥，我的任务在努力执行中......快点输入数据库的密码～～
   #既然文件目录都存在了 那就开始备份数据库文件
   mysqldump -u$USERNAME -p $MYSQLDB | gzip > $BAKDIR/${MYSQLDB}"-"$(date +%H:%M:%S).sql.gz
   chmod -R 777 /home/alic/WorkSpace/Data/*
   echo " 亲～～备份数据库已经完成啦～～～"
   #节约没必要浪费存储文件的磁盘容量 那就清理过去一个星期[7天]的文件夹
   #find /root/sqlbak -mtime +7 -type f -name *.gz -exec rm -f {} \;  该处为文件
   find  $BAKDIR/../ -mtime +7 -type d -exec rm -r {} \;
   echo 清除旧文件夹提示没有那个文件或目录是没有问题的
   echo 大哥，我的任务在已经执行完毕......
else
echo 伙计，你以为你是谁啊，你没有执行的权限～～
fi


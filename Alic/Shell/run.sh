
#!/bin/bash
#处理日常经常使用的命令
echo " Alic,老实说,您要干嘛呢 "
startapache="开启apache服务"
stopapache="停止apache服务"
restartapache="重启apache服务"
cloneweb="获取Web网站源码"
updatehosts="更新hosts"
dumpdatabase="备份数据库"
startbutterfly="连接蝴蝶"
copyworkspace="备份WorkSpace"
installenvironment="安装LAMP环境"
initcomputer="装机初始化EOS"
weather="查看天气"
linkserver="连接服务器"
exittip="快滚一边去"
#将任务输入屏幕tips
echo " 1 : $startapache"
echo " 2 : $stopapache"
echo " 3 : $restartapache"
echo " 4 : $cloneweb"
echo " 5 : $updatehosts"
echo " 6 : $dumpdatabase"
echo " 7 : $startbutterfly"
echo " 8 : $linkserver"
echo " 90 : $copyworkspace"
echo " 101 : $installenvironment"
echo " 102 : $initcomputer"
echo " 560 : $weather"
echo " 0 : $exittip"
while true
do
read -p "alic,想做什么就直接点说 ~~~ : " task
case $task in
#退出
0)
echo "alic,你太狠心了,竟然让我滚一边去，系统已经崩溃～～"
exit
;;
#开启apache
1)
service apache2 start
if [ $? -eq 0 ]
then
echo " alic,$startapache很成功！我厉不厉害，赶紧点赞 ～～"
else
echo " 主人,$startapache失败了！我受不了apache服务～～"
fi
;;
#停止apache
2)
service apache2 stop
if [ $? -eq 0 ]
then
echo " alic,$stopapache很okay( ⊙o⊙ )哇！抽点时间给我升级版本 ～～"
else
echo " 主人,$stopapache失败了！apache实在是太顽固了 ～～"
fi
;;
#重启apache
3)
service apache2 restart
if [ $? -eq 0 ]
then
echo " alic,$restartapache凯旋！是不是我太有活力啦 ～～"
else
echo " 主人,$restartapache失败了！apache在耍赖咯 ～～"
fi
;;
#拿点网站数据
4)
read -p " alic,你需要获取哪个网站的源码: " url
savepath=/home/alic/WorkSpace/Data/webdata
  if [ ! -x $savepath  ]
  then
  mkdir -p $savepath
  fi
#-P参数表示将数据放在指定的目录 注意是大写P
wget -r -k -p -P $savepath -np -x $url
if [ $? -eq 0 ]
then
echo " alic,数据已经放到了回收站，我是不是太聪明啦 ～～"
else
echo " 主人，你是不是傻啊，网址有误( ⊙o⊙ )哇，是不是我不能解析呢，给我更新hosts ～～"
fi
chmod -R 777 $savepath/*
;;
#更新hosts
5)
cd /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/hosts && chmod a+x hosts.sh extraConfig && ./hosts.sh
cd ../../
;;
#备份数据库
6)
cd /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/mysql && chmod 777 mysqldump.sh && ./mysqldump.sh
cd ../../
;;
#连接蝴蝶
7)
echo 蝴蝶已经尝试连接～～
chmod a+x /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/butterfly/* && /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/butterfly/butterfly.sh
;;
#连接服务器
8)
sudo chmod 700 /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/server/.119.29.88.222 && ssh -i /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/server/.119.29.88.222 ubuntu@samego.com
;;
#复制工作空间WorkSpace【源代码】
90)
sourceDir=/home/alic/WorkSpace
toDir=/media/alic/NETAC/Coding/WorkSpace"-"$(date +%Y-%m-%d)
cp -R $sourceDir $toDir
chmod 777 $toDir && chmod -R 777 $toDir/*
echo " 嘿，老大。这砖太大了But已经搬完啦～～ "
;;
#搭建Apache+MySQL+Php
101)
chmod 777 /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/lamp/onekey.sh && /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/lamp/onekey.sh
;;
#针对ElementoryOS系统的装机初始化
102)
chmod 777 /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/initeos/initeos.sh && /home/alic/tutorial/Github/Alic_env/Alic/Shell/Extra/initeos/initeos.sh
;;
560)
read -p " Alic,你想看哪里的天气预报呢 : " localtion
echo "curl wttr.in/$localtion"
curl wttr.in/$localtion
;;
esac
done
WorkSpace

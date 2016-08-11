#!/bin/bash
if [ ${UID} == 0 ]; then
# --------------------用户配置开始--------------------
# jdk的安装路径
jdk_dist_path="/usr/java/"
# jdk压缩文件
jdk_file_name="jdk-8u91-linux-x64.tar.gz"
# 配置文件 默认为etc/profile
profile_path="/etc/profile"
# --------------------用户配置结束--------------------

echo "任务正在执行,请稍后~~~"

# 判断jdk压缩文件是否存在
if [ ! -f $jdk_file_name ];then
echo "===================================================="
echo "$jdk_file_name压缩文件不存在"
echo "===================================================="
exit
# 目标文件夹不存在则创建
mkdir $jdk_dist_path
fi
exit
# 判断目标文件夹是否存在
if [ -x $jdk_dist_path ];
then
echo "===================================================="
echo "$jdk_dist_path目标文件夹已经存在,已经停止安装啦~~~"
echo "===================================================="
exit
else
# 目标文件夹不存在则创建
mkdir $jdk_dist_path
fi

# 开始解压 并获取解压后的根目录文件夹名字
name_tar=`tar -xzvf $jdk_file_name |awk -F '/' '{print $1}'|sort -k1|uniq -c`
jdk_src_dir=${name_tar:8}
if [ $? -eq 0 ];then
    echo "===================================================="
    echo "解压完成"
    echo "===================================================="
else 
    echo "===================================================="
    echo "解压完成失败"
    echo "===================================================="
    exit
fi

# 移动文件夹
mv $jdk_src_dir $jdk_dist_path
# 修改前来个备份
cp $profile_path $profile_path-$(date +%F-%H%M%S).bak
# 修改jdk的环境变量
echo "">>$profile_path
echo "#JDK配置环境">>$profile_path
echo "export JAVA_HOME=/usr/java/$jdk_src_dir">>$profile_path
echo "">>$profile_path
echo "export JAVA_BIN=/usr/java/jdk1.8.0_51/bin">>$profile_path
echo "">>$profile_path
echo "export PATH=\$PATH:\$JAVA_HOME/bin">>$profile_path
echo "">>$profile_path
echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar">>$profile_path

echo "嘿！jdk环境已经配置完成,Please reboot~~~"


else
	echo "没有权限（是不是少了sudo呢）~~~"
fi

#!/bin/bash
if [ ${UID} == 0 ]; then
# jdk的安装路径
jdk_dist_path="/usr/java/"
# jdk的文件夹  目前需要手动
jdk_src_dir="jdk1.8.0_91"
# jdk压缩文件
jdk_file_name="jdk-8u91-linux-x64.tar.gz"
#配置文件
profile_path="/etc/profile"

# 判断目标文件夹是否存在
if [ -x $jdk_dist_path ];
then
echo "===================================================="
echo "$jdk_dist_path目标文件夹已经存在,已经停止安装啦~~~"
echo "===================================================="
exit
else
echo "文件不存在 已经创建目标文件夹"
mkdir $jdk_dist_path
fi

#开始解压
tar -xzvf $jdk_file_name
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
#修改前来个备份
cp $profile_path $profile_path-$(date +%F-%H%M%S).bak
#修改配置文件
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

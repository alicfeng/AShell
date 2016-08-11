#!/bin/bash

if [ ${UID} == 0 ]; then

    confirm=0
    read -p " Alic，您确定要安装Apache+MySQL+Php环境？确认请输入1否则退出： " confirm
    if [ ! $confirm -eq 1 ]
    then
    echo " 伙计，我们已经退出安装此环境啦～～"
    exit 0
    else
    echo " 主人，我在超常发挥为您搭建环境呢，请稍等～～"
    fi

    #安装mysql
    apt-get install mysql-server mysql-client -y
    if [ $? -eq 0 ];then
        mysql_result="安装MySQL成功"
        echo "===================================================="
        echo "安装mysql成功"
        echo "===================================================="
    else
        mysql_result="安装MySQL失败"
        echo "===================================================="
        echo "安装mysql件失败"
        echo "===================================================="
    fi


    #安装apache2
    apt-get install apache2 -y
    if [ $? -eq 0 ];then
        apache_result="安装apache2成功"
        echo "===================================================="
        echo "安装apache2成功"
        echo "===================================================="
    else
        apache_result="安装apache2失败"
        echo "===================================================="
        echo "安装apache2失败"
        echo "===================================================="
    fi


    #让apache支持mysql
    apt-get install libapache2-mod-auth-mysql -y
    if [ $? -eq 0 ];then
        apache_mysql_result="让apache支持mysql成功"
        echo "===================================================="
        echo "让apache支持mysql成功"
        echo "===================================================="
    else
        apache_mysql_result="让apache支持mysql失败"
        echo "===================================================="
        echo "让apache支持mysql失败"
        echo "===================================================="
    fi


    #安装php5
    apt-get install php5 -y
    if [ $? -eq 0 ];then
        php_result="安装php5成功"
        echo "===================================================="
        echo ">安装php5成功"
        echo "===================================================="
    else
        php_result="安装php5失败"
        echo "===================================================="
        echo "安装php5失败"
        echo "===================================================="
    fi


    #让php支持mysql
    apt-get install php5-mysql -y
    if [ $? -eq 0 ];then
        php_mysql_result="让php支持mysql成功"
        echo "===================================================="
        echo "让php支持mysql成功"
        echo "===================================================="
    else
        php_mysql_result="让php支持mysql失败"
        echo "===================================================="
        echo "让php支持mysql失败"
        echo "===================================================="
    fi

    #安装gd库
    apt-get install php5-gd
    if [ $? -eq 0 ];then
        cgi_result="安装php5-gd成功"
        echo "===================================================="
        echo "安装php5-gd成功"
        echo "===================================================="
    else
        cgi_result="安装php5-gd失败"
        echo "===================================================="
        echo "安装php5-gd失败"
        echo "===================================================="
    fi

    #本地编辑项目(phpstorm)
    apt-get install php5-cgi -y
    if [ $? -eq 0 ];then
        cgi_result="安装php5-cgi成功"
        echo "===================================================="
        echo "安装php5-cgi成功"
        echo "===================================================="
    else
        cgi_result="安装php5-cgi失败"
        echo "===================================================="
        echo "安装php5-cgi失败"
        echo "===================================================="
    fi


    #重启服务器apache2
    service apache2 restart
    if [ $? -eq 0 ];then
        service_result="重启服务器apache2成功"
        echo "===================================================="
        echo "重启服务器apache2成功"
        echo "===================================================="
    else
        service_result="重启服务器apache2失败"
        echo "===================================================="
        echo "重启服务器apache2失败"
        echo "===================================================="
    fi


    #集中输出安装结果
    echo $java_result
    echo $php_result
    echo $apache_result
    echo $apache_mysql_result
    echo $php_result
    echo $php_mysql_result
    echo $cgi_result
    echo $service_result


else
    echo "嘿，没有权限( ⊙o⊙ )哇（是不是少了sudo？）～～"
fi


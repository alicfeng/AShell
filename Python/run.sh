#!/bin/bash
if [ ${UID} == 0 ]; then
    while true
    do
    echo "========================================================================"
    echo "0. 退出Shell"
    echo "1. 刷新软件列表"
    echo "2. 安装Python包管理工具pip"
    echo "3. 安装mysql-python"
    echo "4. 安装demjson模块(Json解析模块)"
    echo "5. 安装beautifulsoup4(解析html模块)"
    echo "第一次执行请安装Python包管理工具pip，然后选择其他操作。"
    echo "========================================================================"
    read -p "选择你要安装的依赖包（输入前面的数字）：" i
    case "$i" in
        0)
        echo "========================================================================"
        echo "Alic 我已经退出Shell啦~~~"
        echo "========================================================================"
        exit
        ;;
        1)
        echo "========================================================================"
        echo "正在刷新软件列表"
        echo "========================================================================"
        apt-get update
        ;;
        #安装Python包管理工具pip
        2)
        echo "安装Python包管理工具pip"
        apt-get install python-pip
        if [ $? -eq 0 ];then
            echo "===================================================="
            echo "安装Python包管理工具pip成功"
            echo "===================================================="
        else 
            echo "===================================================="
            echo "安装Python包管理工具pip成功"
            echo "===================================================="
        fi
        ;;
        #安装mysql-python
        3)
        echo "安装mysql-python模块"
        #Step-One：安装MySQL开发工具libmysqld-dev
        apt-get install libmysqld-dev
        #Step-Two：安装Python开发工具python-dev
        apt-get install python-dev
        #Step-Three：安装MySQL开发工具libmysqld-dev
        apt-get install libmysqld-dev
        #Step-Four：安装Python包管理工具pip
        pip install mysql-python
        if [ $? -eq 0 ];then
            echo "===================================================="
            echo "安装mysql-python模块成功"
            echo "===================================================="
        else 
            echo "===================================================="
            echo "安装mysql-python模块成功"
            echo "===================================================="
        fi
        ;;
        #安装demjson模块(Json解析模块
        4)
        echo "安装demjson模块(Json解析模块)"
        pip install demjson
        if [ $? -eq 0 ];then
            echo "===================================================="
            echo "安装demjson模块成功"
            echo "===================================================="
        else 
            echo "===================================================="
            echo "安装demjson模块成功"
            echo "===================================================="
        fi
        ;;
        # 安装beautifulsoup4(解析html模块)
        5)
        echo "安装beautifulsoup4(解析html模块)"
        apt-get install beautifulsoup4
        if [ $? -eq 0 ];then
            echo "===================================================="
            echo "安装beautifulsoup4模块成功"
            echo "===================================================="
        else 
            echo "===================================================="
            echo "安装beautifulsoup4模块成功"
            echo "===================================================="
        fi
        ;;
        *)
        echo "选一个正确的数字~~~"
    	esac
	done
else
	echo "没有权限（是不是少了sudo呢）~~~"
fi

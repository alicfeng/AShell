#!/usr/bin/env bash
# Author   :    AlicFeng
# Email    :    a@samego.com
# Github   :    https://github.com/alicfeng

# 读取ini配置项
# 参数1 配置文件路径  | filePath
# 参数2 配置块       | string
# 参数3 配置项       | string
# 返回  配置项值
function _readINI() {
    INIFILE=$1; SECTION=$2; ITEM=$3
    _value=`awk -F '=' '/\['${SECTION}'\]/{a=1}a==1&&$1~/'${ITEM}'/{print $2;exit}' ${INIFILE}`
    echo ${_value}
}

# 通过端口号杀掉进程
# 参数1 端口号   | int
function _killByPort() {
    PORT=$1
    pid=`lsof -t -i:${PORT}`
    #杀掉对应的进程，如果pid不存在，则不执行
    if [[ -n  "$pid" ]];  then
        kill -9 ${pid}
    fi
}

# 删除文件夹
# 参数1 文件夹路径  | folderPath
function _deleteFolder() {
    FOLDER=$1
    if [[ -d ${FOLDER} ]]; then
        rm -rf ${FOLDER}
    fi
}

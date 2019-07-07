#!/usr/bin/env bash
# Author   :    AlicFeng
# Email    :    a@samego.com
# Github   :    https://github.com/alicfeng/note.samego.com

# 读取ini配置项
# 参数1 配置文件路径  | filePath
# 参数2 配置块       | string
# 参数3 配置项       | string
function _readINI() {
    INIFILE=$1; SECTION=$2; ITEM=$3
    _value=`awk -F '=' '/\['${SECTION}'\]/{a=1}a==1&&$1~/'${ITEM}'/{print $2;exit}' ${INIFILE}`
    echo ${_value}
}

#!/usr/bin/env sh
# Author   :    AlicFeng
# Email    :    a@samego.com
# Github   :    https://github.com/alicfeng
# Describe :    Shell Log Printer With Color

# info log printer
function _infoLog(){
  echo -e "\033[32m[Info] $(date "+%Y-%m-%d %H:%M:%S") $* \033[0m"
}

# warn log printer
function _warnLog(){
  echo -e "\033[33m[Warn] $(date "+%Y-%m-%d %H:%M:%S") $* \033[0m"
}

# error log printer
function _errorLog(){
  echo -e "\033[31m[Erro] $(date "+%Y-%m-%d %H:%M:%S") $* \033[0m"
}



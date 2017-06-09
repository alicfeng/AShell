#!/bin/bash

#获取/etc/profile
current_path="/home/alic/tutorial/github/alicance/Alic_env/资料/Linux/ElementaryOS/配置文件"
sudo cp /etc/profile $current_path/profile"-"$(date +%Y-%m-%d) && sudo chmod 777 $current_path/profile"-"$(date +%Y-%m-%d)
notify-send -t 0 "备份配置文件" "备份/etc/profile完成"

#获取~/.zshrc
cp ~/.zshrc $current_path/zshrc"-"$(date +%Y-%m-%d) && sudo chmod 777 $current_path/zshrc"-"$(date +%Y-%m-%d)
notify-send -t 0 "备份配置文件" "备份~/.zshrc完成"

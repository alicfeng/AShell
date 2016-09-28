#!/bin/bash

#由于将此脚本集成，提示alic伙计，防止手贱～～
confirm=0;
read -p " Alic，您又将我兄弟搞垮了？装机初始化请输入1否则退出： " confirm
if [ ! $confirm -eq 1 ]
then
echo " 伙计，我们已经退出装机初始化啦～～"
exit 0
else
echo " 主人，我在不为余力地将我自己优化，做一个走向完美的EOS美女，请稍等～～"
fi


#----------------------------在此开始卸载不必要的自带软件
#先来一波update
echo "===================================================="
echo "updating"
echo "===================================================="
apt-get update
echo "===================================================="
echo "updated"
echo "===================================================="


#卸载自带的浏览器
apt-get purge  midori* -y
if [ $? -eq 0 ];then
    purge_midori_result="卸载自带的浏览器成功"
    echo "===================================================="
    echo $purge_midori_result
    echo "===================================================="
else 
    purge_midori_result="卸载自带的浏览器失败"
    echo "===================================================="
    echo $purge_midori_result
    echo "===================================================="
fi


#卸载系统日历

apt-get purge maya-calendar -y
if [ $? -eq 0 ];then
    purge_calendar_result="卸载系统日历成功"
    echo ">>>>>>>>>>>>>>>>>>>恭喜,卸载系统日历成功！"
else 
    purge_calendar_result="卸载系统日历失败"
    echo ">>>>>>>>>>>>>>>>>>>抱歉,卸载系统日历失败！"
fi


#卸载系统自带的邮件应用
apt-get purge  geary -y
if [ $? -eq 0 ];then
    purge_geary_result="卸载系统自带的邮件应用成功"
    echo "===================================================="
    echo $purge_geary_result
    echo "===================================================="
else 
    purge_geary_result="卸载系统自带的邮件应用失败"
    echo "===================================================="
    echo $purge_geary_result
    echo "===================================================="
fi


#卸载系统自带的扫描仪
apt-get purge simple-scan -y
if [ $? -eq 0 ];then
    purge_scan_result="卸载系统自带的扫描仪成功"
    echo "===================================================="
    echo $purge_scan_result
    echo "===================================================="
else 
    purge_scan_result="卸载系统自带的扫描仪失败"
    echo "===================================================="
    echo $purge_scan_result
    echo "===================================================="
fi


#卸载系统自带的相机
apt-get purge snap-photobooth -y
if [ $? -eq 0 ];then
    purge_photobooth_result="卸载系统自带的相机成功"
    echo "===================================================="
    echo $purge_photobooth_result
    echo "===================================================="
else 
    purge_photobooth_result="卸载系统自带的相机失败"
    echo "===================================================="
    echo $purge_photobooth_result
    echo "===================================================="
fi


#----------------------------在此结束卸载不必要的自带软件


#----------------------------在此开始安装必要的自带软件

#安装Vim
apt-get install vim -y
if [ $? -eq 0 ];then
    install_vim_result="安装Vim成功"
    echo "===================================================="
    echo $install_vim_result
    echo "===================================================="
else 
    install_vim_result="安装Vim失败"
    echo "===================================================="
    echo $install_vim_result
    echo "===================================================="
fi

#安装Gparted分区软件
apt-get install gparted -y
if [ $? -eq 0 ];then
    install_gparted_result="安装Gparted分区软件成功"
    echo "===================================================="
    echo $install_gparted_result
    echo "===================================================="
else 
    install_gparted_result="安装Gparted分区软件失败"
    echo "===================================================="
    echo $install_gparted_result
    echo "===================================================="
fi


#安装Firefox浏览器
apt-get install firefox -y
if [ $? -eq 0 ];then
    install_firefox_result="安装Firefox浏览器成功"
    echo "===================================================="
    echo $install_firefox_result
    echo "===================================================="
else 
    install_firefox_result="安装Firefox浏览器失败"
    echo "===================================================="
    echo $install_firefox_result
    echo "===================================================="
fi


#安装gcolor2颜色识别器
apt-get install gcolor2 -y
if [ $? -eq 0 ];then
    install_gcolor_result="安装gcolor2颜色识别器成功"
    echo "===================================================="
    echo $install_gcolor_result
    echo "===================================================="
else 
    install_gcolor_result="安装gcolor2颜色识别器失败"
    echo "===================================================="
    echo $install_gcolor_result
    echo "===================================================="
fi


#安装VNC远程工具
apt-get install x11vnc -y
if [ $? -eq 0 ];then
    install_vnc_result="安装VNC远程工具成功"
    echo "===================================================="
    echo $install_vnc_result
    echo "===================================================="
else 
    install_vnc_result="安装VNC远程工具失败"
    echo "===================================================="
    echo $install_vnc_result
    echo "===================================================="
fi


#安装xrdp远程协议
apt-get install xrdp -y
if [ $? -eq 0 ];then
    install_xrdp_result="安装xrdp远程协议成功"
    echo "===================================================="
    echo $install_xrdp_result
    echo "===================================================="
else 
    install_xrdp_result="安装xrdp远程协议成功"
    echo "===================================================="
    echo $install_xrdp_result
    echo "===================================================="
fi


#安装菜单编辑器
add-apt-repository ppa:menulibre-dev/devel -y
apt-get update
apt-get install menulibre -y
if [ $? -eq 0 ];then
    install_menulibre_result="安装菜单编辑器成功"
    echo "===================================================="
    echo $install_menulibre_result
    echo "===================================================="
else 
    install_menulibre_result="安装菜单编辑器失败"
    echo "===================================================="
    echo $install_menulibre_result
    echo "===================================================="
fi


#安装Shadowsocks-qt5
add-apt-repository ppa:hzwhuang/ss-qt5 -y
apt-get update
apt-get install shadowsocks-qt5 -y
if [ $? -eq 0 ];then
    install_shadowsocks_result="安装Shadowsocks-qt5成功"
    echo "===================================================="
    echo $install_shadowsocks_result
    echo "===================================================="
else 
    install_shadowsocks_result="安装Shadowsocks-qt5失败"
    echo "===================================================="
    echo $install_shadowsocks_result
    echo "===================================================="
fi


#安装Tweaks设置组件
apt-add-repository ppa:mpstark/elementary-tweaks-daily -y
apt-get update
apt-get install elementary-tweaks -y
if [ $? -eq 0 ];then
    install_Tweaks_result="安装Tweaks设置组件成功"
    echo "===================================================="
    echo $install_Tweaks_result
    echo "===================================================="
else 
    install_Tweaks_result="安装Tweaks设置组件失败"
    echo "===================================================="
    echo $install_Tweaks_result
    echo "===================================================="
fi



#安装C++ 之 monodevelop
apt-get install monodevelop -y
if [ $? -eq 0 ];then
    install_monodevelop_result="安装C++ 之 monodevelop成功"
    echo "===================================================="
    echo $install_monodevelop_result
    echo "===================================================="
else 
    install_monodevelop_result="安装C++ 之 monodevelop失败"
    echo "===================================================="
    echo $install_monodevelop_result
    echo "===================================================="
fi

#安装C++ 之 g++
apt-get install g++ -y
if [ $? -eq 0 ];then
    install_g_result="安装C++ 之 g++成功"
    echo "===================================================="
    echo $install_g_result
    echo "===================================================="
else 
    install_g_result="安装C++ 之 g++失败"
    echo "===================================================="
    echo $install_g_result
    echo "===================================================="
fi

#(linux下的win终端模拟器->控制台)
apt-get install xterm  -y
if [ $? -eq 0 ];then
    install_xterm_result="安装C++ 之 xterm成功"
    echo "===================================================="
    echo $install_xterm_result
    echo "===================================================="
else 
    install_xterm_result="安装C++ 之 xterm失败"
    echo "===================================================="
    echo $install_xterm_result
    echo "===================================================="
fi

#安装SqliteMan：SQLite3可视化工具
apt-get install sqliteman
if [ $? -eq 0 ];then
    install_sqliteman_result="安装SQLite3可视化工具成功"
    echo "===================================================="
    echo $install_sqliteman_result
    echo "===================================================="
else 
    install_sqliteman_result="安装SQLite3可视化工具失败"
    echo "===================================================="
    echo $install_sqliteman_result
    echo "===================================================="
fi

#安装git可视化工具gitg
apt-get install gitg
if [ $? -eq 0 ];then
    install_gitg_result="安装Git可视化工具成功"
    echo "===================================================="
    echo $install_gitg_result
    echo "===================================================="
else 
    install_gitg_result="安装Git可视化工具失败"
    echo "===================================================="
    echo $install_gitg_result
    echo "===================================================="
fi


#先来一波clean
echo "===================================================="
echo "cleaning"
echo "===================================================="
apt-get automove
apt-get clean
echo "===================================================="
echo "cleaned"
echo "===================================================="

#----------------------------在此结束安装必要的自带软件



#----------------------------在此开始处理其它事项

#安装音频处理包
apt-get install ubuntu-restricted-extras -y
if [ $? -eq 0 ];then
    install_restricted_result="安装安装音频处理包成功"
    echo "===================================================="
    echo $purge_photobooth_result
    echo "===================================================="
else 
    install_restricted_result="安装安装音频处理包失败"
    echo "===================================================="
    echo $purge_photobooth_result
    echo "===================================================="
fi



#----------------------------在此结束处理其它事项


#输出处理的结果
echo "===================================================="

echo $purge_midori_result
echo $purge_calendar_result
echo $purge_geary_result
echo $purge_photobooth_result
echo $install_vim_result
echo $install_gparted_result
echo $install_firefox_result
echo $install_gcolor_result
echo $install_vnc_result
echo $install_xrdp_result
echo $install_menulibre_result
echo $install_shadowsocks_result
echo $install_Tweaks_result
echo $install_monodevelop_result
echo $install_monodevelop_result
echo $install_xterm_result
echo $install_restricted_result
echo $install_sqliteman_result
echo $install_gitg_result

echo "===================================================="

echo "已经执行完毕完啦"


#额外的软件介绍
#安装Gimp绘图
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#sudo apt-get update
#sudo apt-get install gimp

#安装Krita绘图
#sudo add-apt-repository ppa:kubuntu-ppa/backports
#sudo apt-get update
#sudo apt-get install krita kdelibs-bin kbuildsycoca4 --noincremental

#安装前端开发工具:Bracket
#sudo add-apt-repository ppa:webupd8team/brackets
#sudo apt-get update
#sudo apt-get install brackets

#设置默认开启小键盘：e
#sudo scratch-text-editor /etc/lightdm/lightdm.conf
#greeter-setup-script=/usr/bin/numlockx on
      
  
#gif图片录制工具silentcast
#sudo add-apt-repository ppa:sethj/silentcast
#sudo apt-get update
#sudo apt-get install silentcast













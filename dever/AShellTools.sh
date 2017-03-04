#!/bin/bash
export DISPLAY=:0
#关于
about(){
clear
cat <<EOF
------------------------------------------------------------------------------
$(sudo apt-get install figlet -y >/dev/null>&1 && figlet " Alic Feng Shell")
  Author:Alic      Email:1096105191@qq.com     价值源于技术，贡献源于分享
------------------------------------------------------------------------------
EOF
}

#update source.list
updateSource(){
echo "updating source.list,Please waiting ..." && sudo apt-get update -y >/dev/null>&1 && \
echo "congratulate to update source.list completed ..."
}

# 显示安装结果
showResultTip(){
notify-send -i utilities-terminal "AShellTools" "$USER☺installed $1 completed"
}

# 显示任务生在执行
showDoingTask(){
echo "Hello $USER , Terminal is installing $1 ..."
}

# 安装主程序
installMain(){
# if [ ${UID} == 0 ]; then
    while true
    do
    sourceList
    read -p "Please choose the application you want to install (input number)：" iChoose
    case "$iChoose" in
        0)
        about
        exit 0
        ;;

        101)
        showDoingTask "Google Chrome" && sudo apt-get install google-chrome-stable -y && showResultTip "Google Chrome"
        ;;

        102)
        showDoingTask "Firefox" && sudo apt-get install firefox -y && showResultTip "Firefox"
        ;;

        103)
        showDoingTask "GParted" && sudo apt-get install gparted -y && showResultTip "GParted"
        ;;

        104)
        showDoingTask "FileZilla" && sudo apt-get install filezilla -y && showResultTip "FileZilla"
        ;;

        105)
        showDoingTask "WPS"
        wget -c -P $(pwd) http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb -O wps.deb
        sudo dpkg -i wps.deb && sudo apt-get install -fy && showResultTip "WPS"
        ;;

        106)
        showDoingTask "有道词典"
        wget -c -P $(pwd) http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-deepin_amd64.deb -O youdao.deb
        sudo dpkg -i youdao.deb && sudo apt-get install -fy && showResultTip "有道词典"
        ;;

        107)
        showDoingTask "网易云音乐"
        wget -c -P $(pwd) http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb -O netease.deb
        sudo dpkg -i netease.deb && sudo apt-get install -fy && showResultTip "网易云音乐"
        ;;

        108)
        showDoingTask "媒体解码框架"
        sudo apt-add-repository ppa:mc3man/trusty-media -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install Ubuntu-restricted-extras ffmpeg gstreamer0.10-plugins-ugly \
        libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav
        sudo apt-add-repository ppa:mc3man/trusty-media -ry && showResultTip "媒体解码框架"
        ;;

        109)
        showDoingTask "VLC" && sudo apt-get install vlc -y && showResultTip "VLC"
        ;;

        110)
        showDoingTask "VLC" && sudo add-apt-repository ppa:and471/kazam-daily-builds -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install kazam && sudo add-apt-repository ppa:and471/kazam-daily-builds -ry && showResultTip "Kazam"
        ;;

        111)
        showDoingTask "VLC" && sudo add-apt-repository ppa:sethj/silentcast -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install silentcast && sudo add-apt-repository ppa:sethj/silentcast -ry showResultTip "SilentCast"
        ;;

        112)
        showDoingTask "SMPlayer" && sudo apt-get install smplayer -y && showResultTip "SMPlayer"
        ;;

        113)
        showDoingTask "Audience" && sudo apt-get install audience -y && showResultTip "Audience"
        ;;

        114)
        showDoingTask "Gimp" && sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install gimp && sudo add-apt-repository ppa:otto-kesselgulasch/gimp -ry showResultTip "Gimp"
        ;;

        115)
        showDoingTask "Krita" && sudo add-apt-repository ppa:kubuntu-ppa/backports -y && \
        sudo apt-get update >/dev/null>&1 && sudo apt-get install kdelibs-bin kbuildsycoca4 --noincremental krita -y \
        && sudo add-apt-repository ppa:kubuntu-ppa/backports -ry showResultTip "Krita"
        ;;

        116)
        showDoingTask "gedit" && sudo apt-get install gedit -y && showResultTip "gedit"
        ;;

        117)
        showDoingTask "x11vnc" && sudo apt-get install x11vnc -y && showResultTip "x11vnc"
        ;;

        118)
        showDoingTask "Shadowsocks-qt5" && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install shadowsocks-qt5 && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -ry showResultTip "Shadowsocks-qt5"
        ;;

        119)
        showDoingTask "VirtualBox"
        wget -c -P $(pwd) http://download.virtualbox.org/virtualbox/5.1.14/virtualbox-5.1_5.1.14-112924~Ubuntu~xenial_amd64.deb -O virtualbox.deb
        sudo dpkg -i virtualbox.deb && sudo apt-get install -fy && showResultTip "VirtualBox"
        ;;

        120)
        showDoingTask "Steam" && sudo apt-get install steam -y && showResultTip "Steam"
        ;;

        121)
        showDoingTask "Transmission" && sudo apt-get install transmission -y && showResultTip "Transmission"
        ;;

        122)
        showDoingTask "ThunderBird" && sudo apt-get install thunderbird -y && showResultTip "ThunderBird"
        ;;

        123)
        showDoingTask "Okular" && sudo apt-get install okular -y && showResultTip "Okular"
        ;;

        124)
        showDoingTask "FocusWriter" && sudo apt-get install focuswriter -y && showResultTip "FocusWriter"
        ;;

        125)
        showDoingTask "Typora" && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE \
        && sudo add-apt-repository 'deb https://typora.io linux/' && sudo apt-get update >/dev/null>&1 \
        && sudo apt-get install typora -y  && showResultTip "Typora"
        ;;

        126)
        showDoingTask "TeamViewer" && \
        wget -c -P $(pwd) https://download.teamviewer.com/download/teamviewer_i386.deb \
        && sudo dpkg -i teamviewer_i386.deb && sudo apt-get install -fy && showResultTip "TeamViewer"
        ;;

        201)
        showDoingTask "Deepin-Scrot" && \
        wget -c -P $(pwd) http://packages.linuxdeepin.com/deepin/pool/main/d/deepin-scrot/deepin-scrot_2.0-0deepin_all.deb \
        && sudo dpkg -i deepin-scrot_2.0-0deepin_all.deb && sudo apt-get install -fy && showResultTip "Deepin-Scrot"
        ;;

        202)
        showDoingTask "Albert Spotlight" && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install albert && sudo add-apt-repository ppa:noobslab/macbuntu -ry showResultTip "Albert Spotlight"
        ;;

        203)
        showDoingTask "Guake Terminal" && sudo apt-get install guake -y && showResultTip "Guake Terminal"
        ;;

        204)
        showDoingTask "bleachbit" && sudo add-apt-repository ppa:n-muench/programs-ppa -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install bleachbit && sudo add-apt-repository ppa:n-muench/programs-ppa -ry showResultTip "bleachbit"
        ;;

        205)
        showDoingTask "psensor" && sudo add-apt-repository ppa:jfi/ppa -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install lm-sensors hddtemp psensor -y && sudo add-apt-repository ppa:jfi/ppa -ry \
        && showResultTip "psensor"
        ;;

        206)
        showDoingTask "catfish" && sudo apt-get install catfish -y && showResultTip "catfish"
        ;;

        207)
        showDoingTask "docky" && sudo apt-get install docky -y && showResultTip "docky"
        ;;

        208)
        showDoingTask "Indicator Netspeed" && sudo add-apt-repository ppa:nilarimogard/webupd8 -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install indicator-netspeed -y && sudo add-apt-repository ppa:nilarimogard/webupd8 -ry \
        && showResultTip "Indicator Netspeed"
        ;;

        209)
        showDoingTask "TLP" && sudo add-apt-repository ppa:linrunner/tlp -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install tlp tlp-rdw -y && sudo add-apt-repository ppa:linrunner/tlp -ry && showResultTip "TLP"
        ;;

        210)
        showDoingTask "menulibre" && sudo add-apt-repository ppa:menulibre-dev/devel -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install menulibre -y && sudo add-apt-repository ppa:menulibre-dev/devel -ry && showResultTip "menulibre"
        ;;

        301)
        echo "Jetbrains全家桶Office Website➜ https://www.jetbrains.com"
        ;;

        302)
        showDoingTask "Brackets" && sudo add-apt-repository ppa:webupd8team/brackets -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install brackets -y && sudo add-apt-repository ppa:webupd8team/brackets -ry && showResultTip "Brackets"
        ;;

        303)
        echo "Sublime Text Website➜ https://www.sublimetext.com/"
        ;;

        304)
        showDoingTask "Atom" && sudo add-apt-repository ppa:webupd8team/atom -y && sudo apt-get update >/dev/null>&1
        sudo apt-get install atom -y && sudo add-apt-repository ppa:webupd8team/atom -ry && showResultTip "Atom"
        ;;

        305)
        showDoingTask "sqliteman" && sudo apt-get install sqliteman -y && showResultTip "sqliteman"
        ;;

        306)
        showDoingTask "Git、GitG" && sudo apt-get install git gitg -y && showResultTip "Git、GitG"
        ;;

        307)
        showDoingTask "monodevelop" && sudo apt-get install monodevelop g++ xterm -y && showResultTip "monodevelop"
        ;;

        308)
        showDoingTask "MySQL workbench" && wget -c -P $(pwd) \
        https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.3.9-1ubuntu16.04-amd64.deb \
        && sudo dpkg -i mysql-workbench-community-6.3.9-1ubuntu16.04-amd64.deb && sudo apt-get install -fy \
        && showResultTip "MySQL workbench"
        ;;

        309)
        echo "Sorry please manual installation,Website➜ http://www.genymotion.net/"
        ;;

        310)
        echo "downloading asm ..."
        wget -c -P $(pwd) https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/android-screen-monitor/ASM_2_50.zip
        echo "downloaded"
        ;;

        401)
        showDoingTask "enca、iconv" && sudo apt-get install enca iconv -y && showResultTip "enca、iconv"
        ;;

        402)
        showDoingTask "Figlet" && sudo apt-get install figlet -y && showResultTip "Figlet"
        ;;

        403)
        showDoingTask "oh-my-zsh" && sudo apt-get install git -y \
        wget -c -P $(pwd) https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh && \
        sudo sh $(pwd)/install.sh && rm $(pwd)/install.sh && showResultTip "oh-my-zsh"
        ;;

        404)
        showDoingTask "Asciinema" && sudo apt-get install asciinema -y && showResultTip "Asciinema"
        ;;

        405)
        showDoingTask "Aria2" && sudo apt-get install aria2 -y && showResultTip "Aria2"
        ;;

        406)
        showDoingTask "Proxychains4" && git clone https://github.com/rofl0r/proxychains-ng.git && \
        cd proxychains-ng && sudo ./configure –prefix=/usr –sysconfdir=/etc && sudo make && sudo make install && \
        sudo make install-config && cd .. && rm -rf proxychains-ng && showResultTip "Aria2"
        ;;

        *)
        echo "Please choose right number..."
    esac
    sleep 3s && clear
    done
#else
#    echo "Check to see what you are running by root"
#fi
}

# 软件列表清单
sourceList(){
cat <<EOF
=========================================================================================
Installable software or tools list
$(sudo apt-get install toilet -y >/dev/null>&1 && echo " Daily tools " | toilet -f term -F border --gay)
101➜ Google Chrome  102➜ Firefox         103➜ GParted       104➜ FileZilla
105➜ WPS            106➜ YouDao          107➜ NetEaseMusic  108➜ 媒体解码框架
109➜ VLC            110➜ Kazam           111➜ SilentCast    112➜ SMPlayer
113➜ Audience       114➜ Gimp            115➜ Krita         116➜ gedit
117➜ x11vnc         118➜ Shadowsocks-qt5 119➜ VirtualBox    120➜ Steam
121➜ Transmission   122➜ ThunderBird     123➜ Okular        124➜ FocusWriter
125➜ Typora         126➜ TeamViewer
$(echo " System tools " | toilet -f term -F border --gay)
201➜ Deepin-Scrot   202➜ Albert          203➜ Guake         204➜ gnome-system-monitor
205➜ psensor        206➜ catfish         207➜ docky         208➜ Indicator Netspeed
209➜ TLP            210➜ menulibre
$(echo " Developer tools " | toilet -f term -F border --gay)
301➜ Jetbrains      302➜ Brackets        303➜ Sublime Text  304➜ Atom
305➜ sqliteman      306➜ Git、GitG       307➜ monodevelop   308➜ MySQL workbench
309➜ Genymotion     310➜ Android Screen Monitor
$(echo " Terminal tools " | toilet -f term -F border --gay)
401➜ enca ,iconv    402➜ Figlet          403➜ oh-my-zsh     404➜ Asciinema
405➜ Aria2          406➜ Proxychains4
=========================================================================================
EOF
}

main(){
about
#updateSource
installMain
}
main


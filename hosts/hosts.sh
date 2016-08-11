#!/usr/bin/env bash
if [ ${UID} == 0 ]; then
    echo "1. Racaljk"
    echo "2. Liuker"
    echo "3. Coolhosts"
    echo "4. 清理备份hosts"
    read -p "选择Hosts更新源： " i
    case "$i" in
        1)
        wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O fetchedhosts
        mv /etc/hosts /etc/hosts-$(date +%F-%H%M%S).bak
    	sed -i "s/localhost/localhost $(hostname)/g" fetchedhosts
    	sed -i "s/broadcasthost/broadcasthost $(hostname)/g" fetchedhosts
        #注意路径。已经修改单独执行的路径
        if [ -x extraConfig ];
        then
        cat extraConfig >> fetchedhosts;
        fi
        #
        mv fetchedhosts /etc/hosts
        echo Hosts更新完成！！
        ;;
        2)
        wget https://raw.githubusercontent.com/liuker0x007/hosts/master/hosts -O fetchedhosts
        #mv /etc/hosts /etc/hosts-$(date +%F-%H%M%S).bak
    	sed -i "s/localhost/localhost $(hostname)/g" fetchedhosts
    	sed -i "s/broadcasthost/broadcasthost $(hostname)/g" fetchedhosts
        #
        if [ -x extraConfig ];
        then
        cat extraConfig >> fetchedhosts;
        fi
        #
        mv fetchedhosts /etc/hosts
        echo Hosts更新完成！！！
        ;;
	    3)
    	wget http://googlehosts-hostsfiles.stor.sinaapp.com/hosts -O fetchedhosts
        mv /etc/hosts /etc/hosts-$(date +%F-%H%M%S).bak
    	sed -i "s/localhost/localhost $(hostname)/g" fetchedhosts
    	sed -i "s/broadcasthost/broadcasthost $(hostname)/g" fetchedhosts
        #
        if [ -x extraConfig ];
        then
        cat extraConfig >> fetchedhosts;
        fi
        #
        mv fetchedhosts /etc/hosts
        echo 大哥 Hosts更新完成～～
    	;;
    	4)
    	cd /etc && sudo rm hosts-20*.bak
        echo “喂～～，你的垃圾怎么辣么多，But had cleared～～”
    	;;
        *)
        echo "选一个正确的数字～～"
    esac
else
    echo 没有权限～～
fi

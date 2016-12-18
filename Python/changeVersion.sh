#!/bin/bash

#--------config----------start
#备份目录
pythonDir="/usr/bin/pythonAlic/"
#--------config----------end


index=
pythonarray[0]="null"

# 当前的python版本
function currentVersion(){
	echo "当前的版本为${version}"
	python --version
	echo "------------------------------"
}
if [ ${UID} == 0 ];then
	currentVersion
	echo "请选择您要切换python的版本:"
	echo "1. 初始化程序与备份"
	#判断配置目录是否存在
	if [ -x $pythonDir ];then
		#遍历目录下的文件----------start
		dir=$(ls -l ${pythonDir} |awk '{print $NF}')
		for i in $dir
		do
			#过滤文件----------start
			((index++))
			if [ $index -eq 1 ];then
				continue
			else
				after=${i:0-1}
				if [ "$after" -gt 0 ] 2>/dev/null ;then
					str="${index}. 切换${i}"
					#echo $str
					pythonarray[$index]=$str
					echo ${pythonarray[$index]}
				else
					((index--))
				fi
			fi
			#过滤文件----------end
		done
	else
		echo "程序首次运行，请先执行1选项"
	fi
	#遍历目录下的文件----------end
	echo "------------------------------"
	#开始操作
	read -p "请选择您要切换python的版本:" option
	
	if [ $option == 1 ]; then
		if [ -x $pythonDir ]; then
			rm -rf $pythonDir	
			echo "重置目录成功"
		fi
		mkdir $pythonDir	
		echo "${pythonDir}python_default"
		`cp /usr/bin/python "${pythonDir}python_default"`
		`cp /usr/bin/python* "${pythonDir}"`
		echo "备份文件完成"
	fi
	for ((i=1;i<=${index};i++));
	do
		key=${pythonarray[$i]:0:1}
		#echo $key
		if [ "${option}" == "${key}" ]; then
			#开始切换版本操作----------start
			pyname=${pythonarray[$i]:5}
			rm /usr/bin/python
			ln -s /usr/bin/$pyname /usr/bin/python
			echo "版本已经切换至$pyname"
			#开始切换版本操作----------end
		fi
	done
else
	echo "您没有权限~~~"
fi

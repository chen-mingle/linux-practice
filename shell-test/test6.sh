#!/bin/bash

# 判断一个目录是否存在，如不存在创建，存在就打印大小
path=/home/wasd/abc
[ -d ${path} ]
if [ $? -eq 0 ]; then
	echo "yes"
	ls -lh ${path} | awk -F" +" 'NR>1{print "文件大小是"$5"B"}'
else
	echo "no"
	mkdir ${path}
fi

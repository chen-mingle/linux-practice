#!/bin/bash

read -p "请输入一个数字：" num

n=$((${num}%2))
if [ $n -eq 0 ]; then
	echo "偶数"
else
	echo "奇数"
fi

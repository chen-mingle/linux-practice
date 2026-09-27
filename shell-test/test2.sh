#!/bin/bash

# 输出从1-99的自然奇数

for i in {1..99}
do
	x=$(($i%2))
	if [ $x == 1 ];then
	echo $i
	fi
done

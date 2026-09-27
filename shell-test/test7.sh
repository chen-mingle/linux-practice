#!/bin/bash

s=0
for (( i=1;i<=10;i++ ))
do
	echo $i
	if [ "$i" -eq 10 ]; then
		i=1
		let s+=1
	fi
	if [ $s -eq 4 ]; then
		break
	fi
done

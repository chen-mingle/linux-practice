#!/bin/bash

# 这是一个简易计算器，只能计算两个数之间的加、减、乘、除
# 执行后需要先输入第一个数、第二个数、运算符，最后输出结果

read -p "第一个数：" a
read -p "第二个数：" b

expr "$a" + "$b" + 666 >/dev/null 2>&1
[ $? -eq 0 ] ||{
	echo "错误：请输入两个数字"
exit 1
}

read -p "运算符是：" op

if [ "$op" = "+" ]
then 
	echo "$a $op $b = $((a+b))"

elif [ "$op" = "-" ]
then
	echo "$a $op $b = $((a-b))"
elif [ "$op" = "*" ]
then
	echo "$a $op $b = $((a*b))"
elif [ "$op" = "/" ]
then
	echo "$a $op $b = $((a/b))"
elif [ "$op" = "%" ];then
	echo "$a $op $b = $((a%n))"
else
	echo "错误：请输入正确运算符号"
fi

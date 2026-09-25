# shell踩坑汇总

## 1. 简易计算器
```sh
#!/bin/bash

read -p "第一个数：" a
read -p "第二个数：" b
read -p "运算符是：" op
if \[ $op = + ]
then 
	result=$(expr $a + $b)
	echo "$a $op $b = $result"

elif \[ $op == - ]
	result=$(expr $a - $b)
	echo "$a $op $b = $result"
elif \[ $op == * ]
	result=$(expr $a \* $b)
	echo "$a $op $b = $result"

elif \[ $op == / ]
	result=$(expr $a / $b)
	echo "$a $op $b = $result"

elif \[ $op == % ]
	result=$(expr $a % $b)
	echo "$a $op $b = $result"

else
	echo "错误"
fi
```

- 现象：在命令行输入执行命令后，提示在elif \[ $op == / ]处有语法错误
- 原因：在elif \[ $op == / ]之后没有then
- 解决：在elif \[ $op == / ]之后或者下一行加上then
- 收获：不仅if之后要加then,elif之后也要加then,else之后不用


## 2. 输出前12个字母
```sh
#!/bin/bash

echo $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12
```
- 现象
  - 输入：sh test2.sh {a..z}
  - 输出：a b c d e f g h i a0 a1 a2
- 原因：当输入的变量数大于等于10时，脚本中的$10会被识别成$1再加0
- 解决：当输入的变量数大于等于10时，脚本中要写为${10}的形式
- 收获：在脚本中变量最好要写为${}的形式

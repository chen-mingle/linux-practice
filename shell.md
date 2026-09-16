#Shell基础

##代码规范：
#!/bin/bash，用于指定当前脚本要使用的Shell解释器
Shell相关命令

##文件命名规范：
    文件名.sh，.sh是bash shell的默认后缀

##使用流程
· 创建.sh文件     touch/vim
· 编写shell代码
· 执行shell脚本   脚本必须要有执行权限
使用./文件名.sh或者/bin/bash 文件名.sh来执行

#一、变量
先定义后使用

- class_name="yunwei"
定义变量class_name,值为yunwei

- echo $class_name
使用echo执行变量，变量前需加$

- ''
单引号，不能识别变量，不能实现转义

- ""
双引号，可以识别变量，可以实现转义

- *
默认是通配符，\*表示乘号，这个过程叫做转义

- `
反引号，当在脚本中要执行一些指令并将执行结果赋值给变量时需要使用反引号包住

- readonly 变量名
只读变量，只能读，不能修改

- read -p 提示信息 变量名
接收用户输入

- unset 变量名
删除变量

#二、条件判断语句

- if condition
  then
    command1
    command2
    ...
  fi

- if [ condition ]; then command; fi
一般在命令行中执行时使用

- if condition
  then
    command1
    command2
    ...
  else
    command
  fi

- if condition1
  then
    command1
  elif condition2
  then
    command2
  else
    commandN
  fi

#三、运算符
##算术运算符
a=10，b=20
- +
加法，`expr $a + $b`结果为30

- -
减法，`expr $a - $b`结果为-10

- *
乘法，`expr $a \* $b`结果为200

- /
除法，`expr $b / $a`结果为2

- %
取余，`expr $b % $a`结果为0

- =
赋值，a=$b把b的值赋给a

- ==
相等，[ $a == $b ]返回false

- !=
不相等，[ $a != $b ]返回ture

##关系运算符
a=10，b=20
- -eq
检测两个数是否相等，相等返回true
[ $a -eq $b ]false

- -ne
检测两个数是否相等，不相等返回true
[ $a -ne $b ]false

- -gt
检测左边的数是否大于右边，如果是，返回true
[ $a -gt $b ]false

- -lt
检测左边的数是否小于右边，如果是，返回true
[ $a -lt $b ]true

- -ge
检测左边的数是否大于等于右边，如果是，返回true
[ $a -ge $b ]false

- -le
检测左边的数是否小于等于右边，如果是，返回true
[ $a -le $b ]ture

##逻辑运算符
a=10，b=20
- !
非运算，表达式为true则返回false,否则返回true
[ !false ]true

- o
或运算，有一个表达式为true则返回true
[ $a -lt 20 -o $b -gt 100 ]true

- -a
与运算，两个表达式都为true才返回true
[ $a -lt 20 -a $b -gt 100 ]false

##字符串运算符
a为"abc"，b为"efg"
- =
检测两个字符串是否相等，相等返回true
[ $a = $b ]false

- !=
检测两个字符串是否相等，不相等返回true
[ $a != $b ]true

- -z
检测字符串长度是否为0,为0返回true
[ -z $a ]false

- -n
检测字符串长度是否为0,不为0返回true
[ -n $a ]true

- str
检测字符串是否为空，不为空返回true
[ $a ]true

##文件测试运算符
用于检测Unix/Linux文件的各种属性
- -d file
检测文件是否是目录，如果是，返回true
[ -d $file ]false

- -f file
检测文件是否是普通文件，如果是，返回true
[ -f $file ]true

- -r file
检测文件是否可读，如果是，返回true
[ -r $file ]true

- -w file
检测文件是否可写，如果是，返回true
[ -w $file ]true

- -x file
检测文件是否可执行，如果是，返回true
[ -x $file ]true

- -s file
检测文件是否为空（文件大小是否大于0），不为空返回true
[ -s $file ]frue

- -e file
检测文件或目录是否存在，如果是，返回true
[ -e $file ]true


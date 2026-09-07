#Week01 Linux基础笔记
2026-09-07

##一、目录结构
"/"为根目录，所有文件目录都是从根目录开始
HOME目录 是每个用户的个人账户目录，路径在/home/用户名

##二、命令基础
command [-options] [parameter]
command：命令本身
-options：命令的选项，控制命令的行为细节（非必填）
parameter：命令的参数，多数用于命令的指向目标（非必填）

##三、基础命令
- ls [-a -l -h] [Linux路径]
-a -l -h 是可选选项；Linux路径 是可选参数
· -a 表示all，列出全部的文件（包含隐藏的文件/文件夹），以.开头的就是隐藏的文件;
· -l 表示以竖向排列，并展示更多信息
· -h 表示以易于阅读的形式，列出文件的大小，如K(B)、M(B)、G(B)，必须以-lh混合使用
也可以组合使用：
· ls -l -a
· ls -la
· ls -al
· ls -l -a -h
· ls -lah
这三种写法都是相同的作用

- cd [Linux路径]
（change directory）用来切换工作目录

- pwd
（print work directory）查看当前的工作目录












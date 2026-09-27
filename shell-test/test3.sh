#!/bin/bash

# 这是一个文件分类脚本，输入文件路径和文件格式，统计文件数量，并将自动将文件移动到指定位置。

# 输入文件路径
read -p "文件路径：" "path"

# 输入文件格式
read -p "文件格式：" "file"

# 判断有没有文件
num=$(find ${path} -name *.${file} | wc -l)
echo "文件数量：${num}"
if [ ${num} -eq 0 ]; then
    echo "没有找到文件"
    exit 1
else
    echo "路径下有 ${num} 个 ${file} 文件"

    # 转移文件位置
        read -p " 请输入转移文件位置：" "newpath"
        if [ ! -d ${newpath} ]; then
            echo "目标位置不存在，正在创建..."
            mkdir -p ${newpath}
            cp ${path}/*.${file} ${newpath}
            echo "文件已转移到 ${newpath}"
        else
            echo "目标位置已存在"
            cp ${path}/*.${file} ${newpath}
            echo "文件已转移到 ${newpath}"
        fi
fi



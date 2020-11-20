#!/bin/zsh
# echo string

echo "it is a test"
echo "\"it is a test\""

#read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量
read name
echo "$name is a test"

echo 显示换行
echo "OK! \n" # -e 开启转义
echo "It is a test"

echo 显示不换行
echo "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

echo 结果定向文件
echo "Hello Arch! this is myfile" > myfile

echo `date`

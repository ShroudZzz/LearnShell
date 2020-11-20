#!/bin/zsh
echo 单引号
echo 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
echo 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。
name='run'
str="Hello, i know you are \"$name\"! \n"
echo $str

echo 双引号
echo 双引号里可以有变量
echo 双引号里可以出现转义字符
echo 双引号拼接
greeting="hello,"$name"!"
greeting_1="hi, ${name}"
echo $greeting $greeting_1

echo 单引号拼接
greeting_2='hello,'$name'!'
greeting_3='hello,${name}!'
echo $greeting_2 $greeting_3

echo 字符串长度
string="abcd"
echo ${string} ${#string}

echo 提取子串
subString="run is a great site"
echo $subString "substring is ${subString:1:4}"

echo 数组
ary_name=(v1,n2,c3,v5)
ary_name[1]=k7
valuen=${ary_name[0]}
valuen2=${ary_name[1]}
echo $valuen - $valuen2
echo 数组遍历
echo ${ary_name[@]}

echo 数组长度
len1=${#ary_name[@]}
echo $len1
len2=${#ary_name[*]}
echo $len2
echo 数组单个元素长度
len3=${#ary_name[1]}
echo $len3

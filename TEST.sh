#!/bin/zsh
:<<EOF
test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。
-eq	等于则为真
-ne	不等于则为真
-gt	大于则为真
-ge	大于等于则为真
-lt	小于则为真
-le	小于等于则为真
EOF

num1=100
num2=200
if test $[num1] -eq $[num2]
then
    echo 'equal'
else
    echo 'not equal'
fi

#[num] 执行基本的算数运算

a=5
b=6
result=$[a+b] #等号两边不能有空格
echo "result = ${result}" 

echo 字符串测试

:<<EOF
=	等于则为真
!=	不相等则为真
-z 字符串	字符串的长度为零则为真
-n 字符串	字符串的长度不为零则为真
EOF

n1="chen"
n2="chen"

if test $n1 = $n2
then
    echo 'equal'
else
    echo 'not equal'
fi

echo 文件测试
:<<EOF
-e 文件名	如果文件存在则为真
-r 文件名	如果文件存在且可读则为真
-w 文件名	如果文件存在且可写则为真
-x 文件名	如果文件存在且可执行则为真
-s 文件名	如果文件存在且至少有一个字符则为真
-d 文件名	如果文件存在且为目录则为真
-f 文件名	如果文件存在且为普通文件则为真
-c 文件名	如果文件存在且为字符型特殊文件则为真
-b 文件名	如果文件存在且为块特殊文件则为真
EOF
cd /bin
if test -e ./bash
then
    echo 'ok ./bash'
else
    echo 'not find'
fi

# Shell 还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为： ! 最高， -a 次之， -o 最低

cd /bin
if test -e ./File -o -e ./bash
then
    echo 'ok one'
else
    echo 'not all'
fi

#!/bin/zsh
:<<EOF
if condition
then
    command1
    command2
    ..
elif condition2
then
    command3
else
    command
fi
EOF

a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

:<<EOF
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
EOF

for v in 1 2 3 4 5
do
   echo "v is $v"
done

for s in 'This is a demo'
do
   echo $s
done

:<<EOF
while condition
do
    command
done
EOF

i=0
while(($i<=5))
do
  echo $i
  let "i++"
done

echo 'press CTRL-D exit'
echo -n "input any"
while read FILM
do
  echo 'yes $FILM is not bad'
done

:<<EOF
until 循环执行一系列命令直至条件为 true 时停止。
until 循环与 while 循环在处理方式上刚好相反
until condition
do
    command
done
EOF

a=0
until [ ! $a -lt 5 ]
do
  echo $a
  a=`expr $a + 1`
done


:<<EOF
case v in
mod1)
   command1
   command2
esac
EOF

echo "input 1 ~ 4"
echo "input num:"
read num
case $num in
     1) echo 'input 1'
     ;;
     2)  echo 'input 2'
     ;;
     3)  echo 'input 3'
     ;;
     4)  echo 'input 4'
     ;;
     *)  echo 'not input'
     ;;
esac

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

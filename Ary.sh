#!/bin/zsh
# 组用括号来表示，元素用"空格"符号分割开
ary=(A B "C" D)
ary[0]=0
echo "0 element ${ary[0]}"
echo "2 element ${ary[2]}"

echo "array element is ${ary[@]}"
echo "array element count is ${#ary[*]}"

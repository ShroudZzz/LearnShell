#! /bin/zsh
echo "Hello World!"

# Shell 注释
echo 以"#"开头的行就是注释，会被解释器忽略
echo 一段要注释的代码用一对花括号括起来，定义成一个函数，没有地方调用这个函数，这块代码就不会执行

#多行注释 EOF 可替换为' or !
:<<EOF
xxx
zzz
vvv
EOF

#! /bin/bash

echo -e "Your SHOULD input 2 numbers , i will cross them! \n"
read -p "first number: " num1
read -p "second nunmber: " num2

total=$(($num1*$num2))
echo -e "\nThe result of $num1 x $num2 is => $total"

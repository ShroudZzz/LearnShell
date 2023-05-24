#! /bin/bash

read -p "Please input (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "Ok"
	exit 0
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "No!!!"
	exit 0
else 
	echo "I dont't know what your choice is " && exit 0
fi

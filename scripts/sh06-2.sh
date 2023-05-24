#! /bin/bash

read -p "Please input (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "Ok"
	exit 0
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "No!!!"
	exit 0
fi

echo "I dont't know what your choice is " && exit 0


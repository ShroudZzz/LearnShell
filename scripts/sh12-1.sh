#! /bin/bash

function printit() {
	echo -n "Your choice is $1"
}

echo "This program will print your selection!"

case $1 in
	"one")
		printit 1; echo $1 | tr 'a-z' 'A-Z'
		;;
	"two")
		printit 2; echo $1 | tr 'a-z' 'A_Z'
		;;
	"three")
		printit 3; echo $1 | tr 'a-z' 'A_Z'
		;;
	*)
		echo "Usage $0 {one|two|three}"
		;;
esac	

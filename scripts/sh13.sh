#! /bin/bash

while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done

echo "Ok! Stop"

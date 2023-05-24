#! /bin/bash

echo "Now, I will detect your LINUX server's services!"
echo  -e "The www, ftp, ssh, and mail will be detect! \n"

testing=$(netstat -tuln | grep ":80 ")
if [ "$testing" != "" ]; then
	echo "www is runing in your system."
fi

testing=$(netstat -tuln | grep ":22 ")
if [ "$testing" != "" ]; then
	echo "SSH is runing in your system."
fi

testing=$(netstat -tuln | grep ":21 ")
if [ "$testing" != "" ]; then
	echo "FTP is runing in your system."
fi

testing=$(netstat -tuln | grep ":25 ")
if [ "$testing" != "" ]; then
	echo "Mail is runing in your system."
fi


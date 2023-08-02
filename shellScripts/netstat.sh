#!/bin/bash
#Program:
#	net state test
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

touch netstat_checking.txt
testfile=/home/samantha/bin/netstat_checking.txt
netstat -tuln > $testfile

testing=$(grep ":80 " $testfile)
if [ "$testing" != "" ]; then
	echo "www."
fi
testing=$(grep ":21 " $testfile)
if [ "$testing" != "" ]; then
	echo "ftp."
fi
testing=$(grep ":22 " $testfile)
if [ "$testing" != "" ]; then
	echo "ssh."
fi
testing=$(grep ":25 " $testfile)
if [ "$testing" != "" ]; then
	echo "mail."
fi

exit 0

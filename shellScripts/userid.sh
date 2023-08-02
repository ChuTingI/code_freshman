#!/bin/bash
#Program:
#	for train
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

user=$(cut -d ":" -f1 /etc/passwd)
for username in $user
do
	id $username
done

exit 0

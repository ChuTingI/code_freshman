#!/bin/bash
#Program:
#	while train
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

i=0
s=0

while [ "$i" != "$1" ]
#while [ "$i" != "100" ]
do
	i=$(( $i + 1 ))
	s=$(( $s + $i ))
done

echo "The summery is $s."

exit 0

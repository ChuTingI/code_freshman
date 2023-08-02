#!/bin/bash
#Program:
#	case train
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
	"hello")
		echo "Hello! Dear^^"
		;;
	"")
		echo "Please input parameters, ex> {$0 someword}"
		;;
	*)
		echo "Please input 'hello', ex> {$0 hello}"
		;;
esac

exit 0

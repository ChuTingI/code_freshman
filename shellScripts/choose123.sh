#!/bin/bash
#Program:
#	case & function train
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
	echo "Your choice is $1"
}

case $1 in
	"one")
		printit 1
		;;
	"two")
		printit 2
		;;
	"three")
		printit 3
		;;
	*)
		echo "You can only input one|two|three for parameter."
		;;
esac

exit 0

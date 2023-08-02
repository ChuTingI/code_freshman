#!/bin/bash
#Program:
#	Test a file 1)exist? 2)type? 3)permissions?
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Input the file name you want to test."
read -p "Please input file name: " filename
test -z $filename && echo "Didn't input a filename. Exit." && exit 0

test ! -e $filename && echo "$filename does not exist." && exit 0

test -f $filename && tp="file"
test -d $filename && tp="directory"
test -r $filename && pm="readable"
test -w $filename && pm="$pm writable"
test -x $filename && pm="$pm executable"

echo "$filename is a $tp, and your permission is $pm."

exit 0

#!/bin/bash
#Program:
#	User input his/her first name & last name, then output on the screen.
#History:
#2020/11/9	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Will create 3 files with different date name.\n"
read -p "Please input file name: " userinput

filename=${userinput:-"file"}

date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)

file1=$filename$date1
file2=$filename$date2
file3=$filename$date3

touch "$file1"
touch "$file2"
touch "$file3"

exit 0

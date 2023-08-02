#!/bin/bash
#Program:
#	if...then...fi train
#History:
#2020/11/10	samantha	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "(Y/N)?: " ans

echo $ans

if [ "$ans" = "Y" ] || [ "$ans" = "y" ]; then
	echo "Yes."
	exit 0
fi
if [ "$ans" = "N" ] || [ "$ans" = "n" ]; then
	echo "No."
	exit 0
fi
echo "Not Y or N."

exit 0

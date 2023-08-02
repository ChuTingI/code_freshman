#!/bin/bash
#Program:
#$1 = <dev>	裝置的名稱 ex: /dev/sda   /dev/sdb
#$2 = <size>	建立新的partition的容量 (最好支援單位 ex: 500MB, 1GB)
#$3 = <format>	完成後將該partition 格式化成指定個格式。 ( 至少支援兩種)
#參數數量不對： 印該指令的 Help
#都輸入正確時： 該指令必須能知道下一個partition是多少，並建立出該partition。 
#譬如：系統上已經有 /dev/sda /dev/sda1 /dev/sda2  ，那麼指令會自動建立sda3 
#History:
#2020/11/13	samantha	2nd release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

helpU(){
	echo -e "\n----Wrong parameters.----"
	echo "----Usage 'create_new_partition.sh <dev> <size> <format>'----"
	echo -e "<dev>\t\t裝置的名稱 (ex: /dev/sda /dev/sdb)"
	echo -e "<size>\t\t建立新的partition的容量(ex: 500MB, 1GB)"
	echo -e "<format>\tpartition的格式(四位數字)(ex: 8200(Linux swap) 8300(Linux filesystem))。\n"
	exit 0
}

if [ "$#" != "3" ]; then
	helpU
fi

check=0

#確認$1
devN=$(lsblk -dp | cut -d ' ' -f1)      #擷取現有裝置名稱
for devname in $devN
do
	if [ "$devname" = "NAME" ]; then
		continue
	elif [ "$1" = "$devname" ]; then
		check=1
		break
	fi
done
if [ "$check" = "0" ]; then
	helpU
fi

#確認$2
size=$(echo $2 | egrep '[0-9]+(K|M|G)B')	#用正規表示法過濾輸入對錯
if [ "$size" = "" ]; then
	helpU
fi

#確認$3
if [ "$3" != "8200" ] && [ "$3" != "8300" ]; then
        helpU
fi

#執行sgdisk

sudo sgdisk -n 0:0:+$2 -t 0:$3 $1

exit 0

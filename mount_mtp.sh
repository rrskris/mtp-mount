#!/bin/bash

case "$1" in
mount)

dir=$2

mountpoint $dir
	if test $? -ne 0
	then
		mkdir -p $dir
		if test $? -eq 0
		then
		echo "Creating $dir"
		fi
	fi

	mountpoint $dir
	if test $? -eq 0
	then
		echo -e "Error!!! Please unmount first\n"
	exit 2
	else
		echo -e "Trying to mount\n"
	fi


mtpfs $dir
rc=$?
if [ $rc -ne 0 ]
then 
	echo -e "Not mounted\n"
	exit 1
fi

echo "Phone mounted on $dir" 
ls -lthd $dir
	;;
umount)
	fusermount -u $dir
	rc=$?
		if [ $rc -ne 0 ]
		then 
			echo -e "Cannot unmount the phone"
		else
			mtpfs $dir
			rc=$?
			if [ $rc -ne 0 ]
			then 
			#echo -e "Not mounted\n"
			echo -e "Successfully unmounted\n"
			fi
		fi
	;;

*) echo "Usage: $0 [mount|umount] [/path/to/mount] "
	;;
esac

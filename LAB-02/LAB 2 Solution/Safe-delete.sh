#!/bin/bash

#This Script will take files as arguments and delte them safely by moving them to other folder

source helpers.sh

if [ $# -eq 0 ]
then
	echo To use this script you should enter files
	exit 1
fi

trash="trash"

if [ ! -d "$trash" ]
then
	mkdir "$trash"
fi

for i in "$@";do

if [ ! -e "$i" ]
then
	echo Fail message
	continue
fi

ask "$i"

if [ "$answer" == "n" ]
then
	echo Kept "$i"
	continue
elif [ "$answer" == "stop" ]
then
	echo Stopped 
	break
elif [ "$answer" == "y" ]
then
	mv "$i" "$trash"
	echo ok
else
	echo not valid option 
	exit 1
fi
done
echo Thanks

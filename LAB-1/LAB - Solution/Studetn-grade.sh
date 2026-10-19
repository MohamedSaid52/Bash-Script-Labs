#!/bin/bash

#This Script Caculte The Student Score

#echo Please enter username and usergrade

username="$1"
usergrade="$2"

if [ $# -ne 2 ]
then
	echo To Use this script you must enter tow arguments First: Username Second :Usergrade
	exit 1
fi
if [[ ! "$usergrade" =~ ^[0-9]+$ ]]
then
	echo error you should enter number in that filed
	exit 2	
fi
if [ "$usergrade" -gt 100 ]
then
	echo this filed must be equal or less than 100
	exit 3
fi
if [ "$usergrade" -ge 90 ]
then
	echo The Student "$username" Scored "$usergrade" And The Grade is A
elif [ "$usergrade" -ge 75 ]
then
	echo The Student "$username" Scored "$usergrade" And The Grade is B	
elif [ "$usergrade" -ge 60 ]
then
	echo The Student "$username" Scored "$usergrade" And The Grade is C
else
	echo The Student "$username" Scored "$usergrade" And The Grade is F
fi

	echo Thanks

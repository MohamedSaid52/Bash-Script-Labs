#!/bin/bash

# this script will take two arguments directory and number of files
Dir=$1
Num=$2
#echo Please enter two parametr Dirctory and Number of files

#echo please enter first paramter Dir
#read Dir

#echo please enter second parameter number
#read Num

if [ $# -ne 2 ]
then
	echo you must enter the two paramter
	exit 1
fi

if [[ ! "$Num" =~ ^[0-9]+$ ]]
then
	echo Second Paramter must be number
	exit 2
fi 

if [ ! -e "$Dir" ]
then
	echo The "$Dir" Not exit do you want to create it if you want to create it press y
	read opt

	if [ "$opt" = "y" ]
	then
	mkdir "$Dir"
	echo The "$Dir" Created Succesfuly
	exit 4

	else 
	echo Cancelled
	exit 3

	fi
fi

if [ ! -w "$Dir" ]
then
	exit 4
fi

echo Please enter file name prefix

read filename

if [ -z "$filename" ]
then
	touch $(seq -f "$Dir/file_%g.txt" 1 "$Num") 
else
	
        touch $(seq -f "$Dir/${filename}_%g.txt" 1 "$Num")
fi

if [ "$(find "$Dir" -maxdepth 1 -type f -name "${filename}_*.txt" | wc -l)" -eq "$Num" ]
	 then
       	ls -l "$Dir"
    	exit 0
else
    echo "Error: Files were not created"
    exit 5
fi

	echo Thanks


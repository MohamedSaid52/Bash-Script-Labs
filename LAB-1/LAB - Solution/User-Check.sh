#!/bin/bash

# This Script Check User Exist Or Not

echo To Use This Script you should enter :UserName

echo Please enter user name 

read user

if [ -z "$user" ]
then
	echo you should enter valid user
	exit 1
elif [ -n "$user" ]
then
	grep -i "$user" /etc/passwd
	if [ $? -eq 0 ]
	then
	
	home=$(grep -i "$user" /etc/passwd | cut -f 6 -d :)
	shell=$( grep -i "$user" /etc/passwd | cut -f 7 -d :)
	
	echo Home is "$home" 
	echo Shell is "$shell"
	
	echo the exist status is "$?"
	
	else
	echo Not Found
	exit 2
fi
fi
echo Thanks

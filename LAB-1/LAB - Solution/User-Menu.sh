#!/bin/bash

echo please enter your username 

username="$1"
useroption="$2"

if [ -z "$username" ]
then
	echo to user this script you should enter username
	exit 1
fi
	grep  -q "$username" /etc/passwd >/dev/null 2>&1
if [ "$?" -eq 0 ]
then
	echo user already exist
else
	echo user not found
	exit 2
fi


	echo please enter the option
	echo ----------------------------------
	echo press 1 for Account option
	echo press 2 for Home Directory Size
	echo press 3 for Files Owned By User inside tmp
	echo press 4 for running procees
read useroption

case "$useroption" in 
1)
	userid=$(grep -w "$username" /etc/passwd | cut -f 3 -d :)
		
	home=$(grep  -w "$username" /etc/passwd | cut -f 6 -d :)

	 shell=$(grep -w "$username" /etc/passwd | cut -f 7 -d :)

	echo UID :"$userid"  .... HOME : "$home" .... SHELL : "$shell"
;;
2)
	home=$(grep -w "$username" /etc/passwd | cut -f 6 -d :)
	echo The Home Exist And its Size is $(du -sh "$home")
;;
3)
	Numberoffilesowedbyuser=$(find /tmp -type f -user "$username" | wc -l)
	echo "$Numberoffilesowedbyuser" 
;;
4)
	NumofProcess=$(ps -u "$username")
	echo  "$NumofProcess"
;;
*)
	echo notvalid Choice 
	exit 3
;;
esac

	echo Thanks

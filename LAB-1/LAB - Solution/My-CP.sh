#!/bin/bash

# 2

# In this script he want me to copy file to another location , and copy files to directory

# 1	Current Location Not Exist 		2 Destination Location Not Exist


echo Please Enter Current Path File and  Destion Location

echo Please Enter Current Location :
read -a current

echo The Current Location YOU want to copy from it is "$current"

echo Please Enter The Destion location
read dest

echo The Dest Location You Want to Copy to is "$dest"

 

if [ ! -e "$current" ]
then
	echo The Current File not exist
	exit 1
elif [ ! -d "$dest" ]
then
	echo  The Desion Location not exist
	exit 2
else 
	cp "${current[@]}" "$dest"
	echo The Current Location Copied To The Dest Location 
fi 

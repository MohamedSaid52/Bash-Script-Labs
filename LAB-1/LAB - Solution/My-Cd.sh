#!/bin/bash

# 3

#In this script he ask to change the home directory to the user if he don't enter any thing and if he enter dir change to it

echo Please Enter Directroy 
 
read Dir



if [ -z "$Dir" ]
then 
	 cd "$HOME"
	 echo $HOME
else 
	cd "$Dir"
	echo $PWD
fi 
	echo Thanks

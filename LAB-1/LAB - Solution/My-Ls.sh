#!/bin/bash

# This Script List Directory

echo Please enter the the dir

read Dir


if [ -z $Dir ]
then 
	echo The Current Dir List is $(ls -l "$PWD")
else 
	echo The "$Dir" List is $(ls -l "$Dir")
fi 
	echo Thanks

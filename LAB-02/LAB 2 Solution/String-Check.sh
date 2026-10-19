#!/bin/bash

# This Script Check On The String is uppercase or lowercase or mix or number or noting 

export LC_ALL=C

echo Please Enter String

read  String

case $String in 
*[A-Z]*[a-z]*|*[a-z]*[A-Z]*)
        echo This Mix Of Uppercase And Lowercase
;;
*[A-Z]*)
	echo This String is Uppercase
;;
*[a-z]*)
	echo This String is Lowercase
;;
*[0-9]*)
	echo This Number
;;
*)
	echo Noting
esac

	echo Thanks

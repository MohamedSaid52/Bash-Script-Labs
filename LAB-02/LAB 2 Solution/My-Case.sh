#!/bin/bash

# This Script check the etnered character is uppercase or lowercase or number or nothing

echo Please enter char 

read char 

case $char in 
[A-Z])
	echo This Uppercase Char
;;
[a-z])
	echo This Lowercase Char
;;
[0-9])
	echo This Number
;;
*)
	echo Nothing
;;
esac

	echo Thanks

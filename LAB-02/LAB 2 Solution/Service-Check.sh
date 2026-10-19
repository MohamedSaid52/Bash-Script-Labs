#!/bin/bash

# This Script Service is running or not 

source helpers.sh

stoped=""
	for i  in sshd cron nginx mysqld bash;do
	is_running "$i"
        if [ "$?" -eq 0 ]
        then
	echo ok "$i is running"	
	else
        stoped=" "$stoped" "$i" "
        echo "$stoped" > stopped.txt
        echo fail "$i is NOT running"
	fi

	done


echo Thanks

#!/bin/bash

range=`echo {0..4}`
while true
do
    clear
    check=$(ping -c 1 google.com)
    if [ -z "$check" ]
    then
        echo -n "failed ping at "; date +%r; sleep 10
    else
        echo -n "ping successful"
        for i in $range
        do
            echo -ne \\a; sleep 1
        done
	clear
        exit
    fi
done
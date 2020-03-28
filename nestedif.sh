#!/bin/bash

if [ $# -ne 1 ] 
then
	echo "You need to enter the year."
	exit 1 
fi

year=$1

if [ $[$year % 400] -eq "0" ]
then
	echo "$year is a leap year!" 
elif [ $[$year % 4] -eq 0 ]
then
	if [ $[$year % 100] -ne 0 ]
	then
		echo "$year is a leap year!"
	else
		echo "$year is not a leap year."
	fi
else
	echo "$year is not a leap year."
fi

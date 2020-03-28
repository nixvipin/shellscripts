#!/bin/bash

age=$1

if [ ! -z $1 ]
then
  echo "good to go.."
else
  echo "script usage: $0 AGE NAME"
  exit 1
fi

if [ -f /etc/passwd1 ]
then
  echo "file found"
else
  echo "file not found"
  exit 1
fi

if [ $age -gt 18 ]
then
  echo "You are old enough to drive in most places."
fi

ls-lrt
ERROR_CODE=`echo $?`

if [ $ERROR_CODE -ne 0 ]
then
  echo "There is some error in last executed command Error code $ERROR_CODE"
else
  echo "last command executed sucessfully"
fi

name=$2
if [[ $name = "John" ]]
then
  echo -e "\nHi, my name is John Jacob!!!\n"
elif [[ $name = "Sarah" ]]
then
  echo "\nHi, my name is Sarah Jones!!!\n"
else
  echo "Name is incorrect"
fi

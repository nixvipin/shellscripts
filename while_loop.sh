#! /bin/bash

echo -e "Enter absolute path of the file name you want to create"
read file
while read line
do
echo $line >> $file
done

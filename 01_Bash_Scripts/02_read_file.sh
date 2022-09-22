#!/bin/bash
#read file
filename='images.txt'
n=1
while read line; do
# reading each line
echo	 $line
n=$((n+1))
done < $filename
#! /bin/bash 
#read file and insert the value into array
filename='images.txt'
arr_images=() 
while IFS= read -r line 
do
    arr_images+=("$line")
done < $filename

echo "Displaying the contents of array mapped from csv file:"
index=0
for record in "${arr_images[@]}"
do
    echo "Record at index-${index} : $record"
	((index++))
done

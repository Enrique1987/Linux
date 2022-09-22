#! /bin/bash 
#read file separate for colon character
filename='images.txt' 
n=1
z=":"
while IFS=":" read image tag 
do 
    echo "docker pull $image:$tag"
	foo="${image}:${tag}"
    docker pull ${foo}
	n=$((n+1))
done < $filename

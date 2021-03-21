#/bin/sh
#x='python:3.8-slim'
filename='images.txt'
n=1
echo "docker pull"
for line in $(cat ${filename}); 
do

   echo ${line}
  
done

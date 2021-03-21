#/bin/sh
## sum three numeric variables
filename='images.txt'
n=1
#echo "docker pull"
for line in $(cat ${filename}); 
do
  #echo ${line}
  y=${line//[[:space:]]/}
  echo $y
  docker pull ${y}

done



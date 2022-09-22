filename='images.txt'
n=1
#echo "docker pull"
for line in $(cat ${filename}); 
do
  #echo ${line}
  y=${line//[[:space:]]/}
  echo $y
  #echo n
  echo "$n"
  image=333
  n=$[$n +1]
  echo $((image + n))

done



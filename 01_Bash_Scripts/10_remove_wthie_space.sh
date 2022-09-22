filename='images.txt'
n=1
#echo "docker pull"
for line in $(cat ${filename}); 
do
  #echo ${line}
  z=${line}
  y=${line//[[:space:]]/}
  echo $z
  echo $y
  echo -n "$z" | wc -c
  echo -n "$y" | wc -c
  
  #docker pull ${line}
done
echo "   lol  " | xargs


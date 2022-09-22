filename='images.txt'
n=1
#echo "docker pull"
for line in $(cat ${filename}); 
do
  #echo ${line}
  y=${line//[[:space:]]/}
  echo $y
  sleep 1
  tag= date '+%Y%m%d%H%M%S'
  echo -n "adding tag" $tag 
  #!/bin/bash
  Now_hourly=$(date +%d-%b-%H_%M)    
  Now_daily=$(date +%d-%b-daily)   
  third_way=$(date +%Y%m%d%H%M%S)  
  echo "$Now_hourly"
  echo "$Now_daily"
  echo "$third_way"

done



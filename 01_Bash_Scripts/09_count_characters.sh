arr_tags_org=()
arr_images_org=()
image1=python
tag1=3.8-slim
arr_images_org+=("$image1")
arr_tags_org+=("$tag1")
echo  ${arr_images_org[0]}
echo  ${arr_tags_org[0]}
#docker pull ${arr_images_org[0]}:${arr_tags_org[0]}
filename='images.txt'
arr_tags2=()
arr_images2=()
while IFS=":" read image2 tag2 
  do
      # assigns words in line to positional parameters
	  echo "$image2"
	  echo "$tag2"
	  arr_images2+=("$image2")
	  arr_tags2+=("$tag2")
  done < $filename
echo "reading my array"	 
echo  ${arr_images2[0]}
echo  ${arr_tags2[0]}
#docker pull ${arr_tags2[0]}:${arr_tags2[0]}


echo  ${arr_images_org[0]}
echo  ${arr_images2[0]}
echo "${arr_images_org[0]} = ${arr_images2[0]}"
if [ ${arr_images_org[0]} = ${arr_images2[0]} ]; then
    echo expression image evaluated as true
else
    echo expression image evaluated as false
fi
echo  ${arr_tags_org[0]}
echo  ${arr_tags2[0]}
echo "${arr_tags_org[0]} = ${arr_tags2[0]}"
if [ ${arr_tags_org[0]} = ${arr_tags2[0]} ]; then
    echo expression tag evaluated as true
else
    echo expression tag evaluated as false
fi

SO=${arr_tags_org[0]}
echo -n "$SO" | wc -c

SO_2=${arr_tags2[0]}
echo -n "$SO_2" | wc -c


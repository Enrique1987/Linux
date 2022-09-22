#/bin/sh

filename='images.txt'
arr_tags=()
arr_images=()
while IFS=":" read image tag 
  do
      # assigns words in line to positional parameters
	  echo "$image"
	  echo "$tag"
	  arr_images+=("$image")
	  arr_tags+=("$tag")
  done < $filename
echo "reading my array"	 
echo  ${arr_images[0]}
echo  ${arr_tags[0]}
docker pull ${arr_images[0]}:${arr_tags[0]}	
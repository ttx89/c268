#!/bin/sh
#read the file just created then store the content into array.
input=`cat file.txt`
arr=($input)
l=${#arr[*]}
i=1
echo "the number with duplicates and unsort: "${arr[@]}
arr=(`echo "${arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '`) # to use sort command to delete the duplicate numbers, first break the array into different lines, then sort -u, then combine the  multiple lines into one line, sort -u is for unique

echo "the numbers after sort -u: "${arr[@]}

swap=1
while ((swap == 1));do  #while loop to sort the array from max to min
	i=1
	swap=0
	while ((i <= $((l-1)) ));do
		if ((arr[$((i-1))] < arr[$i]));then
			temp=${arr[$((i-1))]}
			arr[$((i-1))]=${arr[$i]}
			arr[$i]=$temp
			swap=1
		fi
		((i++))
	done
done

echo "the numbers sort with reverse order and without duplicate: "${arr[@]}

exit 0

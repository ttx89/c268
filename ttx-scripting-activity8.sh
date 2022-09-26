#!/bin/bash

i=1    #set initial value to record the index  of the array
arr=() #create an array to in store 
checknum='^[0-9]+$'  #create value for check the input is number or not 
while (( i<6 ))   #while loop for the minimum 5 numbers
do
	echo "Enter input number ${i}"
	read inputnum
	if [[ $inputnum =~ $checknum ]];then
		arr+=($inputnum)
		((i++))
	else
		echo "input contain non numerical value"
		exit 1
	fi
done

echo ${arr[@]}  #output the array for the 5 numbers to check the input
echo "Do you want to continue?(true or false)"
read inputanswer  #get the input answer for the 6-10 numbers
answer=${inputanswer}

while [ $answer == "true" ] && [ $i -lt "11" ]  #while loop to check each time
do
	echo "Enter input number ${i}"
	read inputnum
	if [[ $inputnum =~ $checknum ]];then
		arr+=($inputnum)
		((i++))
	else
		echo "input contain non numerical value"
		exit 1
	fi
	if(("$i"<11))  #after each input allow the user to stop entry or enter another number
		then echo "Do you want to continue?(true or false)"
			read inputanswer
			answer=${inputanswer}
	fi
done	

product=1  #create the initial value for the product of the integers
sum=0  #create the initial value for the sum of the integers
min=${arr[0]}  #create the initial value for the minimum of the integers
max=${arr[0]}  #create the initial value for the maximum of the integers
for index in ${arr[@]};do  #for loop to get each value of the array
	product=$((product*index))
	sum=$((sum+index))  #get the sum of the array
	if ((min > index));then  #find the minimum value
		min=$index  
	fi
	if ((max < index));then  #find the maximum value
		max=$index
		fii
done

echo ${arr[@]}
echo "produce is $product"
average=$((sum/(i-1)))  #calculate the average of the integers
echo "average is $average"
echo "sum is $sum"
echo "min is $min"
echo "max is $max"



exit 0

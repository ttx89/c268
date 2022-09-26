#!/bin/bash

echo "input your passward"  #let user input the password
read password               #read the password 

if (( ${#password} > 7))     #first check the length the length of the pwd
then
	FLAG="true"         #make a flag
else
	echo "password's length should be longer than 7 characters."
	exit 1              #when the password is wrong, end the script
fi
echo $password              #test the output of the pwd

num='[0-9]'      #contain numbers
num1='^[0-9]+$'  #contain only numbers
if ! [[ $password =~ [0-9] ]] #check the pwd whether contain numbers
then
	echo "password must contain at least 1 digital numbers"
	exit 1
else
	FLAG="true"
fi
letter1='[a-Z]'
if ! [[ $password =~ [a-Z] ]] #check the pwd whether contain letters
then
	echo "password must contain at least 1 letter"
	exit 1
else
	FLAG="true"
fi
letter2='[a-z]'
if ! [[ $password =~ $letter2 ]] #check the pwd whether contain lowercase letters
then
	echo "password must contain at least 1 lowercase"
	exit 1
else
	FLAG="true"
fi
letter3='[A-Z]'
if ! [[ $password =~ $letter3 ]] #check the pwd whether contain uppercase letters
then
	echo "password must contain at least 1 uppercase"
	exit 1
else
	FLAG="true"
fi
echo "PASS"  # when arrive here, means the password has the length(>=8),contain numbers, lowercase letter and uppercase letter



exit 0

#!/bin/bash 
namePattern="^[A-Z]+[a-z]{2,}$"
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"
phonePattern="^[0-9]{2}(\s)[0-9]{10}$"
check(){
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "Invalid"
	fi
 }

read -p "Enter your first Name " name
check $name $namePattern
read -p "Enter your last Name " lastName
check $lastName $namePattern
read -p "Enter your mail id " mail
check $mail $emailPattern
read -p "Enter your phone number " phone
if [[ $phone =~ $phonePattern ]]
then
	echo valid
else
	echo invalid
fi

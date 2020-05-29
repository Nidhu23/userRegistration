#!/bin/bash 
namePattern="^[A-Z][a-z]{2,}"
emailPattern="^[A-Za-z0-9]*[\-\+\.0-9]*[a-zA-z0-9]+[@][a-z0-9]+[.]+[a-z]{2,3}$"
check(){
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "Invalid"
	fi
 }

#read -p "Enter your first Name " name
#check $name $namePattern
#read -p "Enter your first Name " lastName
#check $lastName $namePattern
read -p "Enter your mail id " mail
check $mail $emailPattern

#!/bin/bash -x
namePattern="^[A-Z][a-z]{2,}"

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
read -p "Enter your first Name " lastName
check $lastName $namePattern

#!/bin/bash -x

check(){
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "Invalid"
	fi
 }

read -p "Enter your first Name " name

namePattern="^[A-Z][a-z]{2,}"
check $name $namePattern

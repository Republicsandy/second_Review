#!/bin/bash -x

read -p "Enter first integers : " first
read -p "Enter second integers : " second
read -p "Enter third integers : " third

Sum=$(( $first+$second+$third ))
	if [[ $Sum -eq 0 ]]
	then
		echo "Sum is zero"
	else
		echo "Sum is $Sum which is not zero"
	fi

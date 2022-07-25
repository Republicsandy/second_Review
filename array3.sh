#!/bin/bash -x

a=0
for (( i=1; i<=100 ; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then
		array[a]=$i
		((a++))
	fi
done
echo "Array of digits are : ${array[@]}"

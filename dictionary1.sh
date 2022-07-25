#!/bin/bash -x


declare -A dice

for(( count=0; count<30; counut++ ))
do
	random=$((RANDOM%6 + 1 ))

	echo $random

	if [[ ${dice[$random]}]] == null ]]
	then
	     dice[$random]=0
	else
	    dice[$random]=$((dice[$random]+1))
	fi
done
for i in ${!dice[@]}
do
	if [[ ${dice[$i]} -eq 10 ]]
	then
		echo "Found"
	else
		echo "Not Found"
	fi
done

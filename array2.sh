#!/bin/bash -x

a=0
read -p "Enter the number : " num
for (( i=2 ; i*i<=$num ; i++ ))
do
	for (( i=2 ; i<=$num ; i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			Prime=1
			for (( j=2 ; j<=$i/2 ; j++ ))
			do
				if [ $(($i%$j)) -eq 0 ]
				then
					Prime=0
					continue
				fi
			done
			if [ $Prime -eq 1 ]
			then
				echo "Prime Factors : $i"
				array[a]=$i
				((a++))
			fi
		fi
	done
done
echo " Array is : ${array[@]}"

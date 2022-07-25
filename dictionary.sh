#!/bin/bash -x
i=0
one=0
two=0
three=0
four=0
five=0
six=0

declare -A DieRoll
	randomCheck=$(((RANDOM%6)+1))
	if [ $randomCheck -eq 1 ]
	then
		((one++))
		DieRoll["$i"]="one"
	elif [ $randomCheck -eq 2 ]
        then
                ((two++))
                DieRoll["$i"]="twp"
	elif [ $randomCheck -eq 3 ]
        then
                ((three++))
                DieRoll["$i"]="three"
	elif [ $randomCheck -eq 4 ]
        then
                ((four++))
                DieRoll["$i"]="four"
	elif [ $randomCheck -eq 5 ]
        then
                ((five++))
                DieRoll["$i"]="five"
	else
                ((six++))
                DieRoll["$i"]="six"
	fi
((i++))

echo "First : $one  Second : $two  Third : $three  Fourth : $four  Fifth : $five  Sixth : $six"
echo ${DieRoll[@]}

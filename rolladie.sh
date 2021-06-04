#!/bin/bash

declare -A rollcount
flag=1

for (( i = 1; i <= 6; i++ )); do
	rollcount[$i]=0
done

maxpos=0
minpos=""

while [[ $flag -eq 1 ]]; do
	
	roll=$(( 1+RANDOM%6 ))

	for (( i = 1; i <= 6; i++ )); do
		if [[ $roll -eq $i ]]; then
			rollcount[$i]=$(( ${rollcount[$i]} + 1 ))
		fi

		if [[ ${rollcount[$i]} -eq 10 ]]; then
			flag=0
			maxpos=$i
			minpos=1 
			for (( j = 1; j <= 6; j++ )); do
				if [[ ${rollcount[$j]} -le ${rollcount[$minpos]} ]]; then
					minpos=$j
				fi
			done
		fi
	done

done

echo Current Dictionary: $'\n'
echo  ${!rollcount[@]}
echo  ${rollcount[@]}$'\n'	

echo Number $minpos has minimum rolls
echo Number $maxpos has maximun rolls

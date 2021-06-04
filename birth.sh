#!/bin/bash 

declare -A monthcount

for (( i = 1; i <= 12; i++ )); do
	monthcount[$i]=0
done

for (( i = 1; i <= 50; i++ )); do
	birthMonth=$(( 1+RANDOM%12 ))

	for (( j = 1; j <= 12; j++ )); do
		if [[ $birthMonth -eq $j ]]; then
			monthcount[$j]=$(( ${monthcount[$j]}+1 ))
			break
		fi
	done

done

echo
echo   "Birth Month  |   No. of People born"
echo   "-----------------------------------"
echo   "January      |   ${monthcount[1]}"
echo   "February     |   ${monthcount[2]}"
echo   "March        |   ${monthcount[3]}"
echo   "April        |   ${monthcount[4]}"
echo   "May          |   ${monthcount[5]}"
echo   "June	     |   ${monthcount[6]}"
echo   "July	     |   ${monthcount[7]}"
echo   "August       |   ${monthcount[8]}"
echo   "September    |   ${monthcount[9]}"
echo   "October      |   ${monthcount[10]}"
echo   "November     |   ${monthcount[11]}"
echo   "December     |   ${monthcount[12]}"

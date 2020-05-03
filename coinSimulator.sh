#!/bin/bash -x
heads=0 
tails=0 
for (( toss=1; toss<=100; toss++ ))
	do
		result=$((RANDOM%2))
		if [ $result -eq 1 ]
			then 
				echo tails is winner
				((tails++))
		else
				echo heads is winner
				((heads++))
		fi
	done
echo tails wins-$heads
echo heads wins-$tails

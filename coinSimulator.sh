#!/bin/bash -x
heads=0 
tails=1 
result=$((RANDOM%2))
if [ $result -eq 1 ]
	then 
		echo tails is winner
	else
		echo heads is winner
fi

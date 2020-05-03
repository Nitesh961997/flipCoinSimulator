#!/bin/bash
heads=0 
tails=0

	while [[ $heads -lt 21 && $tails -lt 21 || $headsLead -lt 2 && $tailsLead -lt 2 ]]
		do
			result=$((RANDOM%2))
			if [ $result -eq 1 ]
				then 
					echo tails 
					((tails++))
			else
					echo heads
					((heads++))
			fi
			if [ $heads -gt $tails ]
				then
					echo heads is leading by $(($heads-$tails))
				elif [ $heads -lt $tails ]
					then
					echo tails is leading by $(($tails-$heads))
				else
					echo match is currently draw			
			fi
				headsLead=$(($heads-$tails))
				tailsLead=$(($tails-$heads))
		done
echo tails wins-$tails
echo heads wins-$heads
if [ $heads -gt $tails ]
	then
		echo heads wins the Competition
	else 
		echo tails wins the Competition
fi

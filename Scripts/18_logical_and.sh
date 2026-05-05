#!/bin/zsh

read "age?What is your age? "
read "country?Your country? "
echo "\n"
if [[ $age -ge 18 ]] && [[ $country=="India" ]] then
	echo "You can vote"
else
	echo "You can't vote"
fi

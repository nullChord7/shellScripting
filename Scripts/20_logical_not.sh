#!/bin/zsh

read "age?Enter your age: "

if [[ ! $age -ge 18 ]]; then
	echo "You can't vote"
else
	echo "You can vote"
fi

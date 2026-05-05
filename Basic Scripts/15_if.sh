#!/bin/zsh

read "age?Enter your age: "

if [[ $age -ge 18 ]] then
	echo "Adult"
else
	echo "Not adult"

fi

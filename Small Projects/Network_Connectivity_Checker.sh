#!/bin/zsh

#Network Connectivity Checker

read "site?Which site you want to check: "

ping -c 3 "$site"

if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $site"
else
	echo "Unable to connect to $site"
fi

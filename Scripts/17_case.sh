#!/bin/zsh

echo "Enter an option\n"
echo "a for printing the date"
echo "b for list of scripts"
echo "c for current location\n"

read choice
echo "\n"

case $choice in
	a) echo "Date is: $(date)" ;;
	b) ls ;;
	c) echo "Current location is: $(pwd)";;
	*) echo "Provide a valid option" ;;
esac

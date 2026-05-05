#!/bin/zsh
setopt KSH_ARRAYS

myArray=(a b c 50.5 66 "My name is Something")

#printing an element from the array
echo "An element at 3rd index is: ${myArray[3]}"

#printing all elements of the array
echo "All element of the array is: ${myArray[*]}"

#printing the length of the array
echo "The length of the array is: ${#myArray[*]}"

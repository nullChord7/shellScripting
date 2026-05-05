#!/bin/zsh
setopt KSH_ARRAYS

#Defining an array
array=(1 2 3)
echo "Original Array: ${array[*]}"
echo "Length of original array: ${#array[*]}"

#Updating the array
array+=(4 5 6)
echo "After updation the array is: ${array[*]}"
echo "Length after updation: ${#array[*]}"

#Priniting a specific value of the array
echo "Element at index 3: ${array[3]}"

#Printing a certain no of values from a specified index
echo "Printing 4 elements from index 2: ${array[*]:2:4}"

#Defining an array with key value pair
declare -A myArray
myArray=([name]=aatrox [age]=immortal)
echo "${myArray[name]}"

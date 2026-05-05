#!/bin/zsh

setopt KSH_ARRAYS

#define an array
array=(1 2 3 4 5 6 six "8-eight-string")

#specific element
echo "Printing a specific elemnet(at index 2): ${array[2]}"

#printing all element
echo "All elements: ${array[*]}"

#printing thee length
echo "length of the array is: ${#array[*]}"

#printing a specific range stating from a specific index
echo "Printing 3 Elemnts from index 2: ${array[*]:2:3} "
# ${array[*]:2:3} Here-> 2 is the index and 3 is the no.of elements i wanna print from index 2



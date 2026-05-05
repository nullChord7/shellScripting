#!/bin/zsh
setopt KSH_ARRAYS

#defining a array
array=(1 2 3)

echo "Before updating the array: ${array[*]}"

array+=(4 5 6)
echo "After updating the array: ${array[*]}"


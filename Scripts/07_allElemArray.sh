#!/bin/zsh
setopt KSH_ARRAYS

#ptinting all elements of an arrays
myArray=(2 4 6 89.00 "Hey I'm Attrox")
echo "All element of the array is: ${myArray[*]}"

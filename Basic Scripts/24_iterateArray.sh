#!/bin/zsh
setopt KSH_ARRAYS
#for zsh -> casue zsh doesn't follow  0 -based indexing

myArray=(1 2 3 4)

#for i in $myArray -> works with bash

#with setopt KSH_ARRAYS enabled, $myArray expands to only the first element of the array.
#$myArray → first element only
#${myArray[@]} → all elements of the array

for i in ${myArray[@]}
do
	echo $i
done

echo "\nUsing the length of the Array\n"
length=${#myArray[*]}
for (( i=0; i<length; i++ ))
do
	echo ${myArray[i]}
done

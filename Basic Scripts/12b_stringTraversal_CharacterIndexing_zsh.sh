#!/bin/zsh

#character indexing version

myString="Hey this is a String Traversal in zsh"
length=${#myString}
echo $length

# i=1, cuz zsh doesn't follow 0-based indexing for strings
for (( i=1;i<=$length;i++ ))
do
        printf "%2d : '%s'\n" "$i" "${myString[$i]}"
done

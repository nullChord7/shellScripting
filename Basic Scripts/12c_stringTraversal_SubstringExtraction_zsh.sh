#!/bin/zsh

myString="Hey this is a String Traversal in zsh"

length=${#myString}
echo $length

# i=0 because ${myString:offset:length} uses 0-based offsets based indexing

for (( i=0; i<$length; i++ ))
do
        printf "%2d : '%s'\n" "$((i+1))" "${myString:$i:1}"
done

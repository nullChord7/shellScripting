#!/bin/bash

myString="Hey this is a String Traversal in bash"

length=${#myString}
echo $length

for(( i=0;i<$length;i++ ))
do
        printf "%2d : '%s'\n" "$i" "${myString:i:1}"
done

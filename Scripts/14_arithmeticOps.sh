#!/bin/zsh

#Arithmetic Operations

x=10
y=2

echo "Using the 'let' command"

#for bash
#let mul=$x*$y
#let div=$x/$y

#echo "Multiplication is: $mul"
#echo "Division is: $div"

#for zsh
let mul="x*y"
let div="x/y"

echo "Multiplication is: $mul"
echo "Division is: $div"


echo "Using the '(())' command"
echo "Subtraction is: $(($x-$y))"
echo "Addition is: $(($x+$y))"

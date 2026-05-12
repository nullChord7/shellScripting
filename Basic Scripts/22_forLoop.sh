#!/bin/zsh

echo "\nFor loop for numbers"
echo "Numbers are"
for i in 1 2 3 4 5
do
	echo $i
done

echo "\nFor loop for strings"
echo "Names are"

for name in Spandan Sreya Ira
do
	echo $name
done

echo "\nOther way of defining for loop"
echo "\nNumbers are"
for j in {1..5}
do
	echo $j
done


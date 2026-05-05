#!/bin/zsh

read "marks?Enter your marks: "

if [[ $marks -ge 80 ]] then
	echo "first division"
elif [[ $marks -ge 60 ]]
then
	echo "second division"
elif [[ $marks -ge 40 ]]
then
	echo "Third division"
else
	echo "Fail!!!!!!!"
fi

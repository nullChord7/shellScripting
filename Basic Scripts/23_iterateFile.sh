#!/bin/zsh

File=/home/nullChord7/shellScripting/Scripts/23_demoText.txt

for name in $(cat $File)
do
	echo $name
done

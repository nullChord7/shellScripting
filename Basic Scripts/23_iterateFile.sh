#!/bin/zsh

File=/home/nullChord/shellScripting/Scripts/23_demoText.txt

for name in $(cat $File)
do
	echo $name
done

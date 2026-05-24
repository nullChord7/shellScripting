#!/bin/zsh

#Colors
Cyan="\e[36m"
Purple="\e[35m"
Reset="\e[0m"

while true
do
	clear
	Time=$(date +"%I : %M : %S")
	echo "${Cyan}╭────────────────────╮${Reset}"
	echo "${Cyan}│${Reset}                    ${Cyan}│${Reset}"
	echo "${Cyan}│${Reset}    ${Purple}$Time${Reset}    ${Cyan}│${Reset}"
	echo "${Cyan}│${Reset}                    ${Cyan}│${Reset}"
	echo "${Cyan}╰────────────────────╯${Reset}"
	sleep 1s
done


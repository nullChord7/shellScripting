#!/bin/zsh

#Colors

Cyan="\e[36m"
Yellow="\e[33m"
Green="\e[32m"
Purple="\e[35m"
Red="\e[31m"
Reset="\e[0m"

clear

echo -e "${Cyan}=====================================================${Reset}"
echo -e "${Yellow}              ⚡ TERMINAL CALCULATOR ⚡            "
echo -e "${Cyan}=====================================================${Reset}"
sleep 1s

echo -e "${Purple}                   Date : 16.02.26                 ${Reset}"
sleep 1s

echo -e "${Cyan}-----------------------------------------------------${Reset}"
echo " "

echo -ne "${Green}➤ Enter first number : ${Reset}"
read number1
sleep 1s
echo -ne "${Green}➤ Enter second number : ${Reset}"
read number2
echo " "
sleep 1s

echo -e "${Yellow}➤ Choose an operation: ${Reset}"
echo -e "${Purple}
• addition
• subtraction
• multiplication
• division
${Reset}
"
sleep 1s

echo -ne "${Cyan}➤ Your choice : ${Reset}"
read choice
sleep 1s

echo " "
echo -e "${Purple}Calculating results ... ${Reset}"
sleep 2s
echo " "
echo -e "${Cyan}=====================================================${Reset}"

case $choice in
	addition)
		echo -e "${Green}✅ Addition result : $((number1+number2)) ${Reset}" ;;
	subtraction)
		echo -e "${Green}✅ Subtraction result : $((number1-number2)) ${Reset}" ;;
	multiplication)
		echo -e "${Green}✅ Multiplication result : $((number1*number2)) ${Reset}" ;;
	division)
		echo -e "${Green}✅ Division result : $((number1/number2)) ${Reset}" ;;
	*)
		echo -e "${Red}❌ Invalid option ${Reset}" ;;
esac
echo -e "${Cyan}=====================================================${Reset}"

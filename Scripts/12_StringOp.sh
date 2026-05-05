#!/bin/zsh

myVar="Hii this is Spandan";

#length of the string

lengthVar=${#myVar};

echo "Length of the variable is: $lengthVar";

#Upper Case

echo "String: $myVar";
#works with bash -> to run it use bash filename.sh
# echo "This is the Uppercase version ---> ${myVar^^}";


#the zsh compatible version
echo "This is the Uppercase version ---> ${(U)myVar}";

#LowerCase

#bash compatible version
#echo "This is the Lowercase version ---> ${myVar,,}";

#zsh compatible version
echo "This is the Lowercase version ---> ${(L)myVar}";


#replace
echo "Before replacing, String ---> $myVar";
replace=${myVar/Hii/Hello};
echo "After replacing words String ---> $replace";


#slice
echo "Slice operation\n(Starting from 12th index and length of 7): ${myVar:12:7}";



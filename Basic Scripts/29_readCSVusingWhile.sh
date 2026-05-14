#!/bin/zsh

while IFS="," read id name age
do 
	echo "$id | $name | $age"

done<29_demoCSV.csv

echo "\nPrinting only the id, name or age is possible."

echo "Only printing the names"
while IFS="," read id name age
do
	echo $name
done<29_demoCSV.csv

echo "\nPrinting the age only"
while IFS="," read id name age
do
	echo $age
done<29_demoCSV.csv

echo "\nHere is a problem\nheding line of the CSV file\nis also printing"
echo "To fix it, we use awk command\n"
cat 29_demoCSV.csv | awk 'NR!=1{print}'| while IFS="," read id name age
do
	echo "$id | $name | $age"
done


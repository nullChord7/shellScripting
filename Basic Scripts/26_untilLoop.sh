#!/bin/bash

a=10

until [[ $a -eq 0 ]]
do
	echo $a
	let a--
done


#!/bin/zsh

read "age?Enter your age: ";
[[ $age -ge 18 ]] && echo "Adult" || echo "not adult"

#!/bin/zsh

read "day?Enter day (sat/sun/mon...): "

if [[ $day == "sat" ]] || [[ $day == "sun" ]]; then
    echo "It's a weekend"
else
    echo "It's a weekday"
fi

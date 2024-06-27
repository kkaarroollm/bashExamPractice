#!/bin/bash


if [ ! "$#" -eq 1 ]; then
#if [ "$#" -ne 1 ]; then
	echo "pass only one digit next time, huh?"
	exit 1
fi

if [ $1 -lt 1 ]; then
	echo "no chance to get factorial out of number less than 1"
	exit 2
fi

echo "Argument: $1"

FACTORIAL=1
for ((c=$1; c>=1; c--)); do
	let FACTORIAL=$((FACTORIAL * c))
done

echo "FACTORIAL for the number $1 is $FACTORIAL"

exit 0
	

#!/bin/bash

AGE=$1

if [ $AGE -lt 13 ]; then
	echo "you are a toddler"
elif [ $AGE -lt 20 ]; then
        echo "you are a teenager"
elif [ $AGE -lt 65 ]; then
        echo "you are an adult"
else
	echo "you are an elder"
fi


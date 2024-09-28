#!/bin/bash

for ((i=1; i<=10; i++)); do
	echo "$i"
	if [ $i -eq 3 ]; then
		break
	fi
done

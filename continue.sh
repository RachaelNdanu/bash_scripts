#!/bin/bash

for ((i=0; i<=10; i++)); do
	if [ $(($i % 2)) -eq 0 ]; then
		continue
	
	else
		echo $i
	fi
done

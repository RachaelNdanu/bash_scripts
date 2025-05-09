#!/bin/bash

TEMP=$1

if [ $TEMP -gt 5 ]; then
	if [ $TEMP -lt 15 ]; then
		echo "kuna baridi "
	elif [ $TEMP -lt 25 ]; then
                echo "its nice outside "
	else
		echo "na kunaa jooto!"
	fi

else
	echo "its freezing! njeveeee"
fi

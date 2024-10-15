#!/bin/bash

CHAR=$1

case $CHAR in
	[a-z])
		echo "$CHAR is a small alphabet" ;;
	[A-Z])
                echo "$CHAR is a big alphabet" ;;
	[0-9])
                echo "$CHAR is a number";;
	*)
                echo "$CHAR is a special character";;
esac









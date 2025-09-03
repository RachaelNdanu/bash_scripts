#!/bin/bash 

GIGA=$1
if [ "$GIGA" -lt 0 ]; then
    echo "Error: The number of gigabytes can't be negative."
    exit 1
fi

MEGA=$(($GIGA * 1024))

echo "$1 GB is equal to $MEGA MB"


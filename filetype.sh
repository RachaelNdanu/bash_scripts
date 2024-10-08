#!/bin/bash

if [ $# -ne 1 ]; then
	echo "error: i only want one argument"
	exit 1
fi

file=$1

if [ -f $file ]; then
	echo "$file is a regular file"
elif [ -L $file ]; then
        echo "$file is a soft link"
elif [ -d $file ]; then
        echo "$file is a directory"
else
	echo "$file does not exist."
fi

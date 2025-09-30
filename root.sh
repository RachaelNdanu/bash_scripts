#!/bin/bash

if [ $(whoami) = 'root' ]; then
	echo "you are the root user"
else
	echo "you are a regular user"
fi

#!/bin/bash

if [ $(whoami) = 'root' ]; then
	echo "you are the root user"
else
	echo "you are just a regular user"
fi

#!/bin/bash

if [ $(whoami) = 'root' ]; then
	echo "you are root"
else
	echo "you are a regular user"
fi

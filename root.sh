#!/bin/bash

if [ $(whoami) = 'root' ]; then
	echo "you are thee root user"
else
	echo "you are a regular user"
fi

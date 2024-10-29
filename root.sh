#!/bin/bash

if [ $(whoami) = 'root' ]; then
	echo "you are the rootuser"
else
	echo "you are a regular user"
fi

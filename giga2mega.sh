#!/bin/bash

GIGA=$1
MEGA=$(($GIGA * 1024))

echo "$1 GB is equal to $MEGA MB"

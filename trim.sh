#!/bin/bash

echo -n "please input a string with aesterisks: "
read input

input=${input//\*/}
input=${input^^}

echo "your updated sting is: $input"

#!/bin/bash

files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

touch ${files[0]} ${files[1]} ${files[2]} ${files[3]} ${files[4]}

#echo ${files[0]} ${files[1]} ${files[2]} ${files[3]} ${files[4]}
 
echo ${files[1]}
echo ${files[*]}
files[0]="a.txt"
echo ${files[*]}

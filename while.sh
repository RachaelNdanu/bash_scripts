#!/bin/bash

num=1
while [ $num -le 10 ]; do
	echo $(( $num *3 ))
	num=$(($num +1))
done

num=-0
while [ $num -le 10 ]; do
        echo "hello baby $num"
        num=$(($num +1))
done

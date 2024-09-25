#!/bin/bash

num=0
until [ $num -gt 10 ]; do
        echo $(( $num **2 ))
        num=$(($num +1))
done

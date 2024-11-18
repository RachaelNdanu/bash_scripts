#!/bin/bash

c=$1
f=$(echo "scale=2; $c * (9/5) + 32" | bc -l)

echo "$c Degrees Celcius is equal to $f farhenheit."

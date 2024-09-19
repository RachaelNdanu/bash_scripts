#!/bin/bash

fs1=$(du -b $1 | cut -f1)
fs2=$(du -b $2 | cut -f1)

echo "file $1 has $fs1 bytes"
echo "file $2 has $fs2 bytes"

total=$(($fs1 + $fs2))

echo "total number of bytes is $total"

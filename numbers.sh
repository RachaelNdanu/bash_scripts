#!/bin/bash

nums=(1 2 3 4 5)
echo ${nums[*]}

unset nums[2]
echo ${nums[*]}

unset nums
echo ${nums[*]}




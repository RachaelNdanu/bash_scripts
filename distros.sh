#!/bin/bash

distros=("ubuntu" "centOS" "Fedora")
echo ${distros[*]}

distros+=("kali")
echo ${distros[*]}

unset distros[1]
echo ${distros[*]}


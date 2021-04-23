#!/usr/bin/env bash

pacman_files=( $(locate --regex '\.pacnew$' '\.pacsave$'))
len=${#pacman_files[@]}

RED='\033[0;31m'
NORNAL_COLOR='\033[0m'

if [[ $len -gt 0 ]];
then
	echo -e "${RED}WARNING: pacnew/pacsave files detected on system:${NORNAL_COLOR}"
	for file in "${pacman_files[@]}"
	do
		echo "    $file"
	done
fi



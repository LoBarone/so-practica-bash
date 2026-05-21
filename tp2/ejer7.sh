#!/bin/bash

dir="$HOME/Documents/Facu/OS/tp1"

for i in "$dir"/*; do
	if [ -f "$i" ]; then
		chmod o+w "$i"
	fi
done



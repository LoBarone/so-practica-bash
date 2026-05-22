#!/bin/bash

for i in ../tp2/*.sh; do
	if [ -f $i ]; then
		echo $i
		chmod u+w,o+x $i
	fi
done

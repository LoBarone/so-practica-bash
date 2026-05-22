#!/bin/bash

for i in ../tp2/*; do
	if [ -f $i ]; then
		pactual=$(stat -c %a $i)
		if [ "$pactual" -eq 644 ]; then
			basename $i >> perm644
		fi
	fi
done


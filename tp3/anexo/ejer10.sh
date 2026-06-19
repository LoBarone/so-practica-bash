#!/bin/bash

total=0
lineas=0
for x in $(find $1 -type f); do
	lineas=$( wc -l "$x" | cut -d ' ' -f1 )
	echo $lineas
	(( total = total + lineas ))
done

echo=$total

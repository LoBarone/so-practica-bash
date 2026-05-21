#!/bin/bash
if [ ! -f uno ]; then
	echo "uno no es archivo"
	exit
fi

if [ ! -f dos ]; then
	echo "dos no es un archivo"
	exit
fi

lineArch1=$(wc -l uno )
lineArch2=$(wc -l dos)

if [ $lineArch1 -gt $lineArch2 ]; then
	echo "uno tiene mas lineas que dos"
elif [ $lineArch1 -lt $lineArch2 ]; then
	echo "dos tiene mas lineas que uno"
fi


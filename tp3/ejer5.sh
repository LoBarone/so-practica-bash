#!/bin/bash


if [ $# -ne 2 ]; then
	echo "Debes pasar 2 parametros"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "El primer parametro debe ser un directorio"
	exit 1
fi

if [ -e $2 ] || [[ ! $2 =~ ^[0-9]+$ ]]; then
	echo "El segundo parametro debe ser un entero"
	exit 1
fi

for i in "$1"/*; do
	if [ ! -f $i ]; then
		continue
	fi
		
	mDet=$2
	mFile=$(stat -c %y $i | cut -d"-" -f2)	
	if [ $mDet -eq $mFile ]; then
		basename $i >> coincidencias
	fi
done



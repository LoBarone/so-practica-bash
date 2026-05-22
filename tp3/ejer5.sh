#!/bin/bash


if [ $# -ne 2 ]; then
	echo "Debes pasar 2 parametros"
	exit
fi

if [ ! -d $1 ]; then
	echo "El primer parametro debe ser un directorio"
	exit
fi

#Falta chequeo si es un int

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

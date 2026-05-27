#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Debes pasar un directorio como parametro"
	exit 1       
fi

if [ ! -d "$1" ]; then
	echo "El directorio ingresado no existe o no es un directorio"
	exit 1
fi

files=0
dirs=0
for x in "$1"/*; do
	if [ -f "$x" ]; then
		(( files++ ))
	elif [ -d "$x" ]; then
		(( dirs++ ))
	fi	
done

echo "Informe directorio {$1}" > informe
echo "N° Archivos: {$files}" >> informe
echo "N° Directorios: {$dirs}" >> informe

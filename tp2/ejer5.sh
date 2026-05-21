#!/bin/bash


if [ $# -ne 1 ]; then
	echo "Debes pasar un directorio como parametro"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Debes pasar un directorio como parametro"
	exit 1
fi

dirs=0
arch=0
for i in "$1"/*; do
	if [ -f "$i" ]; then
		((arch++))
	elif [ -d "$i" ]; then
		((dirs++))
	fi
done


echo "Hay $dirs directorios y $arch archivos en el directorio dado"


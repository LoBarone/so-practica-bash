#!/bin/bash


if [ $# -ne 2 ]; then
	echo "Debes pasar dos parametros como argumentos"
	exit 1      
fi

if [ ! -f $1 ]; then
	echo "1 no es un archivo"
	exit 1
fi

if [ ! -f $2 ]; then
	echo "2 no es un archivo"
	exit 1
fi

lineas1=$(cat $1 | wc -l)
lineas2=$(cat $2 | wc -l)

if [ $lineas1 -gt $lineas2 ]; then
	echo "1 tiene mas lineas que dos"
elif [ $lineas2 -gt $lineas1 ]; then
	echo "2 tiene mas lineas que uno"
fi

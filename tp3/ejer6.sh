#!/bin/bash

if [ $# -ne 1 ] || [ ! -d $1 ]; then
	echo "Debes pasar un directorio como parametro"
	exit
fi

echo "Modificados en los ultimos 30 mins:"
find $1 -mmin -30 

echo "Accedidos en los ultimos 60 minutos:"
find $1 -amin -60

echo "Modificados en los ultimos 5 dias: "
find $1 -mtime -5

echo "Modificados hace mas de 10 dias:"
find $1 -mtime +10

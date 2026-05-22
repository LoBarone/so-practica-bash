#!/bin/bash

if [ $# -ne 1 ] || [ ! -d $1 ]; then
	echo "Debes pasar un directorio como parametro"
	exit
fi

find $1 

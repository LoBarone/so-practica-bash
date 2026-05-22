#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Debes pasar un parametro"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Debes pasar un dir como parametro"
	exit 1
fi

find $1 -name "a*" -type f > name
find $1 -name "*.txt" -type f > extend 
find $1 -perm 644 -type f > perm
find $1 -size 1k -type f > tam

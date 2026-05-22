#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Debes pasar un parametro"
	exit
fi

if [ ! -d $1 ]; then
	echo "Debes pasar un dir como parametro"
	exit
fi



#!/bin/bash

if [ ! -f $HOME/Documents/Facu/OS/Tp1/usuarios ]; then
	echo "No existe el archivo usuarios"
	exit
fi

cp "$HOME/Documents/Facu/OS/Tp1/usuarios" usuarios #Copia el archivo al dir actual

echo "usu01:x:uid:guid: :/home/usu01:/bin/bash" >> usuarios #Agrega la linea al final del archivo

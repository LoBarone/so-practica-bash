#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Debes pasar el nombre del usuario simulado como argumento"
	exit 1
fi

if [ ! -f "$HOME/Documents/Facu/OS/Tp1/usuarios" ]; then
	echo "No existe el archivo usuarios"
	exit 1
fi

cp "$HOME/Documents/Facu/OS/Tp1/usuarios" usuarios | exit 1  #Copia el archivo al dir actual

nombre=$1
echo "$nombre:x:uid:guid: :/home/usu01:/bin/bash" >> usuarios #Agrega la linea al final del archivo

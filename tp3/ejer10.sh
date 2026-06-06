#!/bin/bash

if [ $# -ne 1 ] || [ ! -d $1 ]; then 
	echo "Debes ingresar un directorio"
	exit 1
fi


echo "1) borrar un fichero 2) visualizar un fichero 3) copiar un archivo al directorio actual"
read -p "Elige una opción: " op

while [ $op -ne 4 ]; do
case $op in
1) 
	read -p "Ingresa el nombre del fichero a eliminar" a
	if [ ! -f $a ]; then
		echo "Debes ingresar un archivo"
	fi
	rm $a;;
2)
	ls $1;;
3)
	read -p "Ingrese el arhivo a copiar" a
	if [ ! -f $a ]; then
		echo "Debes ingresar un archivo"
	fi
	cp "$a" ./"$a";;
esac
done

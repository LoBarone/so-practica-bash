#!/bin/bash


read -p "Ingrese una clave: " key
while [[ $key != "secreto" ]]; do
	read -p "Ingrese una clave: " key
done

echo "Bienvenido"

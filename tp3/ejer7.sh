#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Debes usar dos numeros como parametros"
	exit 1
fi

if [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]; then
	echo "Ambos parametros deben ser números reales"
	exit 1
fi

sum=$(( $1 + $2 ))
echo "La suma es: $sum"

res=$(( $1 - $2 ))
echo "La resta es: $res"

mul=$(( $1 * $2 ))
echo "La multiplicacion es: $mul"

div=$(( $1 / $2 ))
echo "La division es: $div"

resto=$(( $1 % $2 ))
echo "El resto es: $resto"

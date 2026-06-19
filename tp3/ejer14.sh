#!/bin/bash

archivo=$1
cadena=$2

if [ $# -ne 2 ]; then
    echo "Uso: $0 archivo cadena"
    exit 1
fi

sed  "s/$cadena//g" "$archivo" > salida

chmod 500 salida


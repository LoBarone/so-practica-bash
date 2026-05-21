#!/bin/bash

clear
df
space=$(df | grep -w "/" | awk '{print $4}')

echo "El espacio disponible en el sistema de archivos es $space"

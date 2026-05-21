#!/bin/bash


cat /etc/passwd > usuarios
cat usuarios | awk -F: '{print $3, $4, $7}' > perfil.txt


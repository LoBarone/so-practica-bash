#!/bin/bash


dirPrac1="$HOME/Documents/Facu/OS/tp1.tar.gz"

mkdir -p "$HOME/Documents/Facu/OS/Nuevo"
tar -xzf $dirPrac1 -C "$HOME/Documents/Facu/OS/nuevo"

cat "$HOME/Documents/Facu/OS/nuevo/hist.txt | grep "ls" > listado

tar -czf listado.tar.gz "$HOME/Documents/Facu/OS/nuevo/listado" 

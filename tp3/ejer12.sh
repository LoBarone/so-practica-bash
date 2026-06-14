if [ $# -ne 2 ]; then
	echo "Debes ingresar 2 strings"
	exit 1
fi

if [[ $1 == $2 ]]; then
	echo "cadenas correctas"
	exit 0
else
	echo "cadenas incorrectas"
	exit 1
fi

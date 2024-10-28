#!/bin/bash
#comprobar q se pasa directorio
if [ -z "$1" ]; then
    echo "debes proporcionar un directorio"
    exit 1
fi

#contar los archivos en el directorio
num_ficheros=$(find "$1" -maxdepth 1 -type f | wc -l)

if (( num_ficheros > 10 )); then
    echo "Hay mas de 10 ficheros en el directorio."
else
    echo "Hay 10 o menos ficheros en el directorio."
fi

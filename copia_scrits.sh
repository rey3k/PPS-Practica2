#!/bin/bash
#comprobamos q se pase carpeta por parametro
if [ -z "$1" ]; then
    echo "pasa una carpeta"
    exit 1
fi

#cremos nombre del archivo de copia
fecha=$(date +"%d%m%Y")
nombre_copia="copia_scripts_$fecha.tar"

#comprimimos los scripts
tar -cvf "$nombre_copia" "$1"/*.sh

echo "Se ha creado la copia: $nombre_copia"

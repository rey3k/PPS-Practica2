#!/bin/bash
#edad del usuario
read -p "Introduce tu edad (entre 15 y 60 años): " edad

#año actual
ano_actual=$(date +"%Y")

#calcula año de nacimiento
ano_nacimiento=$((ano_actual - edad))

#decada
decada=$((ano_nacimiento / 10 * 10))

echo "Naciste en $ano_nacimiento, por lo cual has nacido en la década de $decada."

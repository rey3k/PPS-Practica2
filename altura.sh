#!/bin/bash
#alturas en cm
read -p "Introduce la altura de la primera persona en cm: " altura1
read -p "Introduce la altura de la segunda persona en cm: " altura2
read -p "Introduce la altura de la tercera persona en cm: " altura3

#convertir a metros
altura1_metro=$(echo "scale=2; $altura1 / 100" | bc)
altura2_metro=$(echo "scale=2; $altura2 / 100" | bc)
altura3_metro=$(echo "scale=2; $altura3 / 100" | bc)

mayor=$(echo "$altura1_metro $altura2_metro $altura3_metro"| tr ' ' '\n'  | sort -nr | head -n1)

echo "La persona más alta mide $mayor metros."

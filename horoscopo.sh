#!/bin/bash
#año de nacimiento
read -p "Introduce el año en el que naciste (4 cifras): " ano

# Calcula el animal del horóscopo chino
resto=$((ano % 12))

case $resto in
    0) animal="La rata" ;;
    1) animal="El buey" ;;
    2) animal="El tigre" ;;
    3) animal="El conejo" ;;
    4) animal="El dragon" ;;
    5) animal="La serpiente" ;;
    6) animal="El caballo" ;;
    7) animal="La cabra" ;;
    8) animal="El mono" ;;
    9) animal="El gallo" ;;
    10) animal="El perro" ;;
    11) animal="El cerdo" ;;
esac

echo "Tu animal del horoscopo chino es: $animal."

#!/bin/bash
# Pide un numero al usuario
read -p "Introduce un numero: " numero

# Comprueba si es multiplo de 10
if (( numero % 10 == 0 )); then
    echo "$numero es un multiplo de 10."
else
    echo "$numero no es un multiplo de 10."
fi

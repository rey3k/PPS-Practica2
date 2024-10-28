#!/bin/bash
#metemos dos numeros
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo nuero: " num2

#determinamos rango
if (( num1 > num2 )); then
    inicio=$num2
    fin=$num1
else
    inicio=$num1
    fin=$num2
fi

#suma
suma=0
for (( i=inicio; i<=fin; i++ )); do
    suma=$((suma + i))
done

echo "La suma de los numeros en el rango es: $suma"

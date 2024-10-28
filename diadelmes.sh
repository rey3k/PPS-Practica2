#!/bin/bash
#mes actual
mes=$(date +"%m")

#número de días del mes
case $mes in
    01|03|05|07|08|10|12) dias=31 ;;
    04|06|09|11) dias=30 ;;
    02) dias=28 ;;
esac

#resultado
nombre_mes=$(date +"%B")
echo "Estamos en $nombre_mes, el mes tiene $dias dias."

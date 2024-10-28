#!/bin/bash
log_file="error.log"

while true; do
    read -p "Introduce nombre de usuario: " usuario

    #vemos si existe
    if id "$usuario" &>/dev/null; then
        #info del usuario
        id "$usuario"
    else
        echo "El usuario $usuario no existe." | tee -a "$log_file"
    fi

    read -p "¿Quieres introducir otro usuario? (s/n): " respuesta
  
    #si la respuesta es "s" sigue y si no termina
    [[ "$respuesta" = "s" ]] || break
done

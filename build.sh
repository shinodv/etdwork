#!/usr/bin/bash

echo ''se borra la web y se vuelve a crear''
rm -rf web
mkdir web

./inicio.sh "$1"> web/inicio.html
./pagina1.sh "$1"> web/pagina1.html
./pagina2.sh "$1"> web/pagina2.html
./pagina3.sh "$1"> web/pagina3.html

echo "finalizado"

cd web/

if [[ -e w3.css ]] ; then
  # Comandos a ejecutar si el archivo existe
    echo El archivo w3.css existe
    else
  # Comandos a ejecutar si el archivo no existe
    echo El archivo no existe

    wget "https://www.w3schools.com/w3css/4/w3.css"
    
    if [[ $? -ne 0 ]] ; then 
        echo "La descarga de la hoja de estilo ha sido errónea"
        echo "Se detiene la ejecución"
        exit 1
    fi
fi

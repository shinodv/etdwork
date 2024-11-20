#!/usr/bin/bash


./cabecera.sh "Inicio"
./navegacion.sh "$1"

cat << EOF
<div>
<h1>Ejemplo de página de inicio</h1>
</div>
<p>Esta es la página de inicio.</p>
<p>:D</p>


EOF

./pie.sh
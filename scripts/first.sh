#! /bin/bash
# Exportamos la variable MESSAGE para que ejecute en "second.sh"

MESSAGE="Hola soy el first script"

export MESSAGE

./second.sh
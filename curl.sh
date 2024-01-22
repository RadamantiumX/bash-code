#! /bin/bash

echo "Ingresa tu URL"
read url # Leemos lo q ingresa el usuario

# curl $url > users.json # Lo guardamos en un archivo

curl -I $url

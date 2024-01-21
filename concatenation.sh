#! /bin/bash

echo "Enter your name" 
read name # lo guardamos en esta variable (lo que ingrese el usuario) 

echo "Write an adjective"
read adjective # lo guardamos en esta variable (lo que ingrese el usuario)

# result="$name is $adjective" # Concatenemos ambos textos

# echo $result # Los mostramos

echo ${name,,} # Convertimos en minusculas esta variable de STRING
echo ${name^^} # Convertimos en MAYUSCULAS esta variable de STRING
echo ${name,,[AEIOU]} # Convierte a minúsculas solo a las vocales (ponemos en MAYUSCULAS las vocales)
echo ${name^^[aeiou]} # Convierte a MAYUSCULAS solo a las vocales (ponemos en minusculas las vocales)

# Dentro de los [] podemos especificar cualquier caracteres a convertir

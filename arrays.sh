#! /bin/bash

names=( "John" "Mark" "James" "Mary" "Eddy" ) # Son importantes los espacios en ambos lados internos del parentesis

echo "El primer elemento es: ${names[0]}" # Dentro de los [] especificamos el indice.
echo "Todos los elementos son: ${names[*]}" # Mostramos todos los elementos
echo "Los indices son: ${!names[@]}" # Mostramos solo los indices
echo "El total de elementos: ${#names[@]}" # Mostramos el total de elementos
echo "El ultimo elemento es: ${names[${#names[@]}-1]}" # Mostramos el ultimo elemento (Del total, mostramos el ultimo, le restamos "-1")

# Recorremos los elementos del ARRAY
for name in ${names[@]}
do
  echo "The name is: ${name}"
done  

# Eliminamos un elemento del ARRAY
# unset names[1]

# Mostramos todo el ARRAY sin el elemento eliminado
# echo "Array con un elemento eliminado: ${names[*]}"

# Añadimos un elemento al ARRAY
# names[${#names[@]}+1]="Carl" # Lo ubica en la ultima posicion añadida, le sumamos +1 al indice
# echo "Array con un elemento añadido: ${names[*]}" 

# Otra forma mas simple de añadir
names+=("Lucy")
names+=("Lukas")
names+=("Jenny")
echo "Array con un elemento añadido: ${names[*]}" 

# Actualizamos o editamos un elemento
index=3 # Cambiamos el indice dinamicamente
names[$index]="Morrion"
echo "Array con el elemento Nº$index editado: ${names[*]}"
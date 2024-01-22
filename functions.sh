#! /bin/bash
# echo "Dime tu nombre"
# read name

function sayHello() {
  # message="Hola" # Variable global
  local message="Hola" # Variable local, solo de uso en esta función (SCOPE)
  # echo "Hola, que tal $name ?" # Le decimos que lo concetene con el primer argumento q le pasemos por varible
  echo "$message $1, tengo $2 años" # Tomamos el primer y el segundo argumento
}

# Llamamos a la funcion y le pasamos argumentos
# sayHello "Rada"
# sayHello "Jose"

# sayHello
sayHello "Loco" 22 # Le pasamos dos argumentos
# message="Hello" # Modificamos el valor de la variable
echo $message # Llamamos a la variable por fuera de la función
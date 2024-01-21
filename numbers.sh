#! /bin/bash

# echo $(( 10 + 20 ))
# echo $(( 15 - 5 ))

# Uso de variables

x=10
y=5

# Utilizamos los variables de las variables para hacer operaciones
echo $(( x + y ))

# Podemos realizar esto con las demás operaciones matemáticas.

# Sintaxis alternativa

echo $(expr $x \* $y ) # Con "expr" le decimos que evalúe la siguiente expresión

# Usamos el escape "\" de caracteres para que tome el asterísco "*" como una multiplicación
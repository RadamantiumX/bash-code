# BASH SCRIPT

**Refs---> $ = BASH**


Es utilizado en la linea de comandos, se utiliza, principalmente, para interactuar con OS's UNIX o LINUX, entre algunos.


## Herramientas

Existen muchos SHELLS a utilizar, principalmente en UBUNTU contamos con, por ejemplo, el: BASH, SH, RBASH,DASH, etc...

Comprobamos cuales tenemos disponibles:

```
$ cat /etc/shells
```
```
$ # /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/usr/bin/sh
/bin/dash
/usr/bin/dash
/usr/bin/tmux
/usr/bin/screen
```
***Por defecto usaremos BASH***

Para comprobar cual es el SHELL que estamos utilzando, ponemos en la terminal q estemos usando:

```
$ echo $SHELL
```
Al darle ENTER, comprobaremos que estamos utilizando BASH.

```
$ /usr/bin/bash

```
Cualquiera de los anteriores mencionados, ejecutan los mismos comandos.

## Código Básico

Para empezar, tenemos que saber en donde estamos ubicados con el BASH, para eso utilizamos el comando "pwd". En mi caso, para no saltar de un OS a otro, estoy utilizando la distribución virtual de UBUNTU en WINDOWS, asi que, voy a crear una carpeta para el proyecto en donde se ubica la del usuario.

Creamos la nueva carpeta con elsiguiente comando:

```
$ mkdir bash-course
```

Ingresamos dentro de la carpeta recien creada (comando "cd //nombre de la carpeta//"), y creamos un nuevo archivo, al que vamos a llamar "helloworld.sh":

```
$ touch helloworld.sh
```
La extención "sh" es forma muy utilizada para reconocer un SCRIPT. Lo abrimos con VSC, pero al princpio del SCRIPT le colocamos lo siguiente:

```
$ #! /bin/
```
A esto se lo conoce como un **shebang**, hace referencia a que al inicio de la ejecución del vamos a llamar a un programa especial.

Luego podemos escoger el SHELL con el que vamos a correr el programa, en nuestro caso va a ser BASH.

```
$ #! /bin/bash
```
Ejecutamos un codigo sencillo para se muestre en el BASH:

```
$ echo "Hello World"
```
De todas formas, esto aun es un SCRIPT, no es programa, aun no lo podemos ejecutar como tal en la terminal. De todas formas, podemos ver que permisos tenemos disponible.

```
$ la -al helloworld.sh
```
Nos arroja este resultado:

```
$ -rw-r--r-- 1 radamantium radamantium 32 Jan 19 15:49 helloworld.sh
```

Los permisos (que vemos al inicio de la linea), son permisos que nos dicen que solo podemos escribir y leer, pero aun no es un ejecutable. Pero podemos hacer que lo sea con el siguiente comando:

```
$ chmod +x helloworld.sh
```
Ahora, si volvemos a ver los permisos:

```
$ -rwxr-xr-x 1 radamantium radamantium 32 Jan 19 15:49 helloworld.sh 
```
La "x" hace referencia a que es un ejecutable, eso quiere decir que podemos hacer lo siguiente:

```
$ ./helloworld.sh
```

El **"./"** solo se puede utilizar en archivos ejecutables.

## Guardar Salida

Puede resultar util guardar datos en los archivos, a este **script** vamos a lograr que guarde en un archivo y también lo cree.

```
echo "Hola mundo!" > hola.txt
```
Haciendo esto y ejecutando en la terminal (con **./**) ya no vamos a ver el "Hola mundo!", en su lugar nos crea, en el directorio raiz, un nuevo archivo ".txt" llamado "hola.txt".

Ahora, si queremos ingresar mas datos a nuestro SCRIPT, para no solo tener el "Hola mundo!":

```
cat > hola.txt
```
El comando "cat" nos permite ingresar mas texto, y luego decidir cuando queremos detenernos, presionamos CRTL+D (mas recomendado), dos veces quizás, o CRTL+C para detener la ejecución.

Al volver ejecutar el comando, el archivo "txt" se limpia y espera que termine la ejecución del SCRIPT. Para que se añada cada texto que ingresemos, sin que se limpie el archivo, tenemos que poner la siguiente sintaxis:

```
cat >> hola.txt
```

## Comentarios en BASH

Al igual que en muchos casos, para añadir un comentario en BASH, utilizamos el numeral **#**. Para las multiples líneas de comentarios tenemos las comillas simples **: ''**, agregando los dos punto delante con un espacio de por medio.

## CAT delimitador

Con el comando "cat" podemos establecer el inicio y el fin de múltiples lineas. Creamos un nuevo archivo.

**output.sh**
```
cat << myText
esto es un texto 
que se mostrara
en consola
myText
```
Al contrario de lo que habíamos vista, ahora los simbolos son de "<<" que indican que vamos a pasarle algo, seguido de eso creamos una variable "myText" (camel-case), que va a delimitar el texto (por ejemplo) que vamos a añadir.

Es un recursos que podemos utilizar varias veces en un SCRIPT.


## Read

Podemos aceptar parámetros o inputs en nuestro SCRIPT, primero creamos nuevo archivo llamado "read.sh". En BASH, para aceptar un valor utilizams el comando **read**. Con el mismo, conseguimos (entre algunas funciones) guardar lo que el usuario tipee en terminal.

```
read age
```

Definiendo esto en el SCRIPT, cuando el usuario ingrese algun valor en la terminal, vamos a guardarlo en esa variable. También, es posible integrar esa variable (con el valor guardado) es un texto.

```
read age
echo "Esta es tu edad: $age"
```
Tal como podemos ver, concatenemos el texto con la variable, a esta ultima la diferenciamos con ": $".


## Condicionales

Como su nombre lo indica, nos permite ejecutar algo dependiendo de su condición, puede resultar util para evaluar lo que vamos a realizar y si cumple la condición para que sea ejecutado. Lo vemos en el SCRIPT.

**conditionals.sh**

```
age=20

if [ $age -eq 10 ]
then
  echo "el numero es igual"
fi  
```

Hay que destacar los espacios entre los corchetes, la IDENTACION dentro de la condicional y la identificación de la variable con el simbolo "$". Obviamente, también tendrá un cierre con el "fi".

Aclaro lo anterior, y si analizamos el codigo, observamos cuando ejecutamos el SCRIPT no pasa nada, eso es porque "age" no igual a 10, y por lo tanto, se detiene la ejecución al no cumplirce la condición.

Operadores:

-eq = igual a
-ge = mayor o igual
-le = menor o igual

Puede suceder que no se cumple cierta condición, queramos ejecutar otra cosa.

```
age=11

if [ $age -eq 10 ]
then
  echo "el numero es igual"
else
  echo "el numero no es igual"  
fi 
```

Como alternativa, también podemos utilizar esta sintaxis en una condicional:

```
age=11

if (( age > 18 ))
then
  echo "el numero es igual"
else
  echo "el numero no es igual"  
fi  
```

En lugar del los corchetes, pusimos paréntesis dobles (dejando el espacio dentro) y no exponemos la variable con el simbolo "$". Ahora si podemos usar los simbolos ya conocidos, tales como: >, <, ==, =<, >=, etc...

Siguiendo el tema, es posible agregar mas condiciones (en el caso que las necesitemos), y para lograrlo es necesario utilizar "elif".

```
age=17

if (( age > 18 ))
then
  echo "Eres un adulto"
elif (( age >= 17  ))
then
  echo "Casi eres un adulto" 
else
  echo "Eres un niño"  
fi 
```
Al agregar un segundo condicional con "elif", es importante utilizar el "then", tal cual como en el "if".

## Operadores

Además de los operadores comparativos que vimos anteriormente, también podemos hacer uso de los operadores lógicos.

```
age = 10

if [ $age -gt 18 ] && [ $age -lt 40 ]
then
   echo "edad válida"
else
   echo "edad no válida"
fi 
```
Los **&&** (Ampersand) son el operador logico para "AND". Otra sintaxis válida para el mismo condicional seria así:

```
if [[ $age -gt 18 && $age -lt 40 ]]
```
**Los espacios entre los términos son muy importantes, incluso cuando no lo llevan.**

Asismo, está el operado "OR", que son representados por los "||".

Ver en la documentación los operadores: https://www.imd.guru/sistemas/bash/operadores-de-comparacion.html


## Case

Al utilizar **Case**, podemos estar hablando de los mismo que los condicionales IF. Tenemos un valor, y dependiendo del mismo, ejecutamos algo.

```
echo "escoge un numero, te diré cuan cerca estas del número magico...😊"
read value

case $value in
  1)
    echo "Escogiste un valor muy bajo"
  ;;
  2)
    echo "Esta mejor, pero puede ser mas" 
  ;;
  3)
    echo "Sigue subiendo"
  ;;
  4)
    echo "Ya casi..."
  ;;
  5)
   echo "Perfecto"
  ;; 
  *)
   echo "Te pasaste..."
esac 
```
Esperamos un valor del usuario con el "read".
Para separar cada evaluación ponemos ";;", y cerramos con el "esac", que es "case" al revés.

A diferencia del IF, no podemos hacer comparaciones aritmeticas.

## Loops

Como ya sabemos, esto nos permite ejecutar alguna logica hasta que se cumpla una condición, en pocas palabras un BUCLE.

```
number=1

while [ $number -lt 10 ]
do
  echo $number
  number=$((number + 1))
done 
```
En otro caso, si queremos hacer lo contrario utilizamos el ***"until"***, que ejecuta cierto codigo mientras la condición no se cumpla.

Por otro lado esta el FOR:

```
for i in 1 2 3 4 5
do
  echo $i
done 
```
Si no queremos mostar esa secuencia de numeros, podemos usar los rangos.

```
for i in {0..20}
do
  echo $i
done 
```

En su lugar, podemos modificar las escalas, si en vez de 1 en 1, sean de 2 en 2, y asi sucesivamente...

```
{0..20..2}
```

La otra sintaxis permitida es muy similar a otros lenguajes de programación.

```
for (( i=0; i < 10; i++ ))
do
  echo $i
done  

```
Aca tambien podemos establecer rangos y escalas.


## Break & Continue

En los bucles quizás necesitemos detener le ejecución del mismo por alguna razón. Para este caso tenemos el "**Break**", el cual lleva una condición.

```
for (( i=0; i<10; i++ ))
do
  if [ $i -gt 5 ]
  then 
    break
  fi  
  echo $i
done  
```
Como vemos, el IF trabaja dentro del FOR, entonces, si se cumple la condición del primero, se detiene el bucle.

Como ya es sabido, podemos hacer una combinacion con operadores logicos dentro de la condicion del IF. Y ya que estamos con eso, podemos establecer una condicion, pero para que continue con el bucle con ciertas condiciones.

```
for (( i=0; i<10; i++ ))
do
  if [ $i -eq 3 ] || [ $i -eq 7 ]
  then 
    continue
  fi  
  echo $i
done 
```

Ahora establecimos que, si "i" es igual 3 o igual a 7, el bucle se va a detener en esos dos valores, pero esta vez le decimos que continue la ejecución normal, salteando solo esos numeros. Esto lo logramos con el **"continue"**

```
radamantium@DESKTOP-EIS1CLU:~/bash-course$ ./continue_break.sh
0
1
2
4
5
6
8
9
```

## Arguments

Le podemos pasar valores al SCRIPT para q ejecute determinada logica. 
Después de hacer un SCRIPT ejecutable, al iniciarlo podemos pasarle argumentos.

```
$ ./arguments.sh 10 20 params
```
Todo lo que viene despues del ejecutable son argumentos, y a estos se pueden leer. Estos mismos estan indexados a partir del "1" en adelante (segun la cantidad de argumentos que le pasemos).

```
echo $1 $2
```
Ahí le decimos al SCRIPT que nos muestre el argumento "1" y el "2". Y en efecto, nos mostrará el "10" y el "20". No es necesario q haya un orden para mostrarlos. 

También, es posible mostrar todos los argumentos sin necesidad de especificar el indice.

```
echo $@
```
De esa forma, muestra desde el primero en adelante. Otra posiblidad, contar los elementos.

```
echo $#
```
Recordemos que siempre empezará desde el 1, es lo contrario de una lista que empieza desde el 0, lo cual tambien hacer.

```
args=("$@")

echo "Result: ${args[0]}, ${args[1]} y ${args[2]}"
```
```
$ Result: casa, perro y gato
```
Colocamos los valores dentro de una variable de tipo lista, y los mostramos con un STRING.


## Standard Input

Es la forma que la terminal puede recibir algun valor.

```
while read line
do
  echo $line
done < "${1:-/dev/stdin}"   
```
Con esto hemos creado una especie de "cat", en el cual ha recibido un archivo de entrada con el **"${1:-/dev/stdin}"** (lo recibe como primer argumento), y al momento de recibirlo, ha recorrido 1 a 1 las lineas que le estamos pasando y las muestra en la consola.

```
$ ./stdin.sh hola.txt
No tomen en cuenta esto
quizas no me conozcan
soy Toy Maclure
Añadimos mas texto dentro del
que ya teniamos
```
En este caso, le decimos que nos muestre una a una las lineas de ese archivo, pero tambien puede ser que solo lea las entradas que hacemos en la consola. 

El programa "/dev/stdin" viene incluido en el sistema LINUX, es el estandad para poder recibir datos en STREAMS.


## STDERR STDOUT

En esta sección veremos el STANDARD OUTPUT y el STANDARD ERROR. El primero es la salida que obtenemos cuando ponemos un comando ejecutable si lo tipeamos correctamente, de caso contrario, obtendremos un error, que es el STANDARD ERROR.

**STDOUT** --> comando correcto
```
$ ls
README.md     case.sh          continue_break.sh  hola.txt              loop.sh    read.sh           stdin.sh
arguments.sh  conditionals.sh  helloworld.sh      logical_operators.sh  output.sh  stderr_stdout.s
```

**STDERR** --> comando incorrecto

```
$ lsx
Command 'lsx' not found
```

Podemos guardar los resultados, tanto de uno como de otro.

```
ls 1>file.txt
``` 
Vamos a pedirle al SCRIPT que nos guarde el resultado del OUTPUT (ls) en un archivo llamado "file.txt". 
**file.txt**
```
README.md
arguments.sh
case.sh
conditionals.sh
continue_break.sh
file.txt
helloworld.sh
hola.txt
logical_operators.sh
loop.sh
output.sh
read.sh
stderr_stdout.sh
stdin.sh
```
Si es "1", el resultado se pondra en ese archi, pero si es "2" en otro llamado "error.txt".

```
ls -123 1>file.txt 2>error.txt
```

**error.txt** 

```
ls: invalid option -- '2'
Try 'ls --help' for more information.
```
De esta forma estamos guardando todos los datos, que obtenemos como SALIDA o como ERRORES.

Es posible, también, que necesitemos guardar tanto el OUTPUT como el ERROR en el mismo archivo.

```
ls >archivo.txt 2>&1
```
Por defecto el OUTPUT será 1, no hace falta que lo especifiquemos, y con el "&1", hacemos referencia que el ERROR se guardará en el primer paramtro, que es el "archivo.txt". Es lo mismo de antes, pero con otra sintaxis.

Podemos simplificarlos mas:

```
ls >& file.txt
```
Cualquier valor, ya sea OUTPUT o ERROR, lo guardara en ese archivo.


## PIPES

PIPE === "|"

Es un concepto de las herramientas que tiene BASH.

Por ejemplo, al utilizar el comando "wc" en el BASH, este nos cuenta las LINEAS de STRING que hay, la cantidad de palabras y de letras. 

A este ultimo lo podemos combinar en un PIPE con, por ejemplo, el comando "ls".

```
$ ls | wc -l
15
```

En este caso, le decimos que nos cuenta la cantidad de lineas (***-l***) que nos arroja el OUTPUT "ls", esto lo puede hacer con el otro comando ya mencionado "wc".

Se pueden ordenar los archivos, ya sea por tamaño, nombre, fecha de creación, modificación.

```
$ ls -l | sort -k5 -rn
-rw-r--r-- 1 radamantium radamantium 14595 Jan 20 22:41 README.md
-rwxr-xr-x 1 radamantium radamantium   367 Jan 19 22:47 case.sh
-rwxr-xr-x 1 radamantium radamantium   210 Jan 19 23:33 loop.sh
-rwxr-xr-x 1 radamantium radamantium   160 Jan 19 19:51 conditionals.sh
-rwxr-xr-x 1 radamantium radamantium   124 Jan 19 22:13 logical_operators.sh
-rwxr-xr-x 1 radamantium radamantium   120 Jan 19 23:58 continue_break.sh
-rw-r--r-- 1 radamantium radamantium   109 Jan 19 17:51 hola.txt
-rwxr-xr-x 1 radamantium radamantium    98 Jan 20 18:29 arguments.sh
-rwxr-xr-x 1 radamantium radamantium    91 Jan 20 19:54 stderr_stdout.sh
-rwxr-xr-x 1 radamantium radamantium    84 Jan 19 18:59 read.sh
-rwxr-xr-x 1 radamantium radamantium    79 Jan 19 18:12 output.sh
-rwxr-xr-x 1 radamantium radamantium    74 Jan 20 18:47 stdin.sh
-rwxr-xr-x 1 radamantium radamantium    64 Jan 19 18:02 helloworld.sh
-rw-r--r-- 1 radamantium radamantium    64 Jan 20 19:54 file.txt
-rw-r--r-- 1 radamantium radamantium    64 Jan 20 19:41 error.txt
```
Así los ordenamos de mayor a menor, en este caso tamaño.

**pipe.sh**

Creamos un SCRIPT ejecutable, en el cual contamos los caracteres de un STRING.

```
MESSAGE="Hola mundo!"

MESSAGE | wc -m 
```
```
$ ./pipe.sh
12
```
Nos dice que tiene 12 caracteres.

***Continuar con archivos dentro de la carpeta "scripts"***


## STRINGS

Ahora veremos las comparaciones con STRINGS.

***comprare_strings.sh***

Para este ejemplo vamos a utilizar las comparaciones de contraseñas que ingresa el usuario en la consola.

```
echo "Enter your password"
read input1

echo "Repeat your password"
read input2

if [ $input1 == $input2 ]
then
  echo "Password accepted"
else
  echo "Wrong password"
fi  
```
Es básico, ponemos un condicional para la comparación.
Ahora vamos a copiar este archivo (con todo y sus permisoso) y vamos a crear otro llamado ***concatenation.sh***.

```
$ cp compare_strings.sh concatenation.sh
```

Continúa...
***Ver: convertir en miniculas en el archivo***

## NUMBERS

Para que el BASH puede interpretar el codigo, cuando hacemos una operación matemática, lo tenemos que encerrar en dobles paréntesis.

```
echo $(( 10 + 20 ))
echo $(( 15 - 5 ))
```
```
$ ./numbers.sh
30
10
```
Podemos realizar esto con las demás operaciones matemáticas.

***Los valores flotantes pueden no ser soportados por BASH, pero pueden ser utilizadas algunas paqueterías para lograrlo.***

Continua...
***Ver: number.sh***


## DECLARE

Aca podemos ver una diferencia, entre crear una variable y utilizar ***declare*** para hacerlo. Esto último nos ofrece mas propiedades.

```
declare myvariable=22
```
Con esto podemos indicar que esta variable es de solo lectura, inmutar el tipo de dato que va a contener, etc... Es muy similar a una CONSTANTE en otros lenguajes de programacion.

```
declare -r pwdfile=/etc/passwwd
```
De esta forma "declaramos" que esta variable es solo de lectura "-r" ***(read)***

```
$ ./declare.sh
/etc/passwwd
./declare.sh: line 6: pwdfile: readonly variable
```


## ARRAYS

Son listas de elementos. Es una forma sencilla de almacenar varios en uno solo.

```
names=( "John" "Mark" "James" "Mary" )
```
Esta la forma de representar un ARRAY de elementos en BASH, muy similar a las TUPLAS, pero sin la separacion de las comas.

Para mostrarlos, solo necesitas indicar el indice dentro de los corchetas, o con el asterisco mostramos todos.
```
echo "Los nombres son: ${names[*]}"
```
```
$ Los nombres son: John Mark James Mary
```

Continua... 
***Ver: arrays.sh***


## FUNCTIONS

Como es sabido, las funciones en BASH cumplen la misma funcion que en otros lenguajes de programación, es una porcion del codigo del que podemos reutilizar.

```
function sayHello() {
  echo "Hola mundo"
}

sayHello
```

Por lado definimos la función, y luego la llamamos. Podemos llamarla cuantas veces queramos. También, podemos pasarle argumentos a la función, para que lo utilce en alguna operacion matematica.

Las variables que se crean dentro de una función, son variables globales:

```
function sayHello() {
  message="Hola"
  echo $message
}

sayHello

echo $message
```
Eso quiere decir, que si queremos, la podemos llamar por fuera de la función. Incluso, se puede modificar el valor de la variable.

```
function sayHello() {
  message="Hola"
  echo $message
}

sayHello

message="Hello"
echo $message
```
La secuencia de ejecución en BASH, es linea por linea, y al no ser una variable constante se puede modificar.

Ahora, si lo queremos es que esa variable no salga mas alla de la función, debemos hacer uso del termino "local". Con eso, vamos a decir q esa variable solo existe cuando llamemos a esa función. Si la intentamos llamar por fuera, no mostrara nada, será NULL.


## DIRECTORIES

Una parte importante de BASH SCRIPT, es trabajar con carpetas y archivos. En este ejemplo, vamos a comprobar si un archivo o una carpeta existe, o como podemos crearla desde un archivo SCRIPT. Es decir, va a confirmar (por nosotros), si una carpeta ya fue creada.

```
echo "Crea el nombre de tu carpeta:"
read folder # Lee (lo que el usuario tipee) y guarda en "folder"

# Comprueba si existe
if [ -d $folder ] # La "-d" hace referencia a un directorio
then
   echo "El directorio '$folder' ya existe"
else
   echo "El directorio '$folder' no existe"
fi  
```

Al pasarle un nombre por la terminal, chequea dentro de ests mismo directorio para comprobar su existencia.
Esto solo funciona para carpetas, si queremos hacer lo mismo pero con archivos, solo tenemos que cambiar la "-d" por la "-f" (de "files").

Además de verificar la existe, en este caso, de un archivo, tambien podemos modificarlo si existe.

```
echo "Nombre del archivo:"

# Comprueba si existe
if [ -f $file ] # La "-f" hace referencia a un archivo
then
   echo "Escribe el contenido" # Si existe que el usuario escriba text
   read contenido # Leemos el texto en una variable
   echo $contenido >> $file # La guardamos en un archivo
else
   echo "El archivo '$file' no existe"
fi 
```
Recordemos que con el ">>" se modifica el archivo en cuestión, pero se mantienen las demás lineas ya existentes (si las hubiera).

Junto con todo esto, le podemos decir que, nos muestre todas las lineas del archivo existente (si las tiene).

```
if [ -f $file ]
then
  # Obtenemos el contenido del archivo y lo recorremos
  while IFS= read -r line
  do
    echo $line # Mostramos linea por linea en la consola
  done < $file 
else
  echo "el archivo $file no existe"  
fi  
```
Otra de los usos que le podemos dar es, de eliminar un archivo. Para eso usamos el comando "rm" (***remove***).

```
rm $file
```

## CURL

Ya contamos con una serie de comandos para BASH, pero de ser necesario podemos instalar más. Y no tienen que ser necesariamente comandos para LINUX.
Podemos usar el comando CURL (Client URL), que sirve para la transferencia de datos en multiples protocolos, pero siendo el HTTP el mas usado.

```
$ curl https://jsonplaceholder.typicode.com/users
```
De esa forma nos mostraría el resultado de esa petición a la URL.

***curl.sh***
```
echo "Ingresa tu URL"
read url # Leemos lo q ingresa el usuario

curl $url
```
En este caso, llamamos a nuestro SCRIPT para que se ecargue de llamar a CURL. Incluso, podemos guardar en un archivo el resultado.

```
$ ./curl.sh
Ingresa tu URL
https://jsonplaceholder.typicode.com/users
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  5645    0  5645    0     0  64135      0 --:--:-- --:--:-- --:--:-- 64885
```
Como se ve, el comando se encargo d hacer la descarga de los datos y, también, ponerlos en un archivo JSON.

No solo para este tipo de archivos se puede hacer, es viable para cualquier otra extensión.

Para ver los HEADERS y la información que tiene cada peticion. Esto puede sernos util cuando creamos alguna lógica para restringir ciertas peticiones o archivos, como para dar un ejemplo.
```
curl -I $url
```
Datos de prueba:
https://jsonplaceholder.typicode.com/
https://freetestdata.com/

## DEBUGGING

Algo no menos importante, es saber como encontrar errores si nuestro programa empieza a crecer, o ya es bastante grande. 
BASH, al ser un lenguaje interpretado, puede resultarnos muy util poder saber donde estan los errores.

```
$ bash -x concatenation.sh
```
Con ese comando podemos ejecutar un DEBUGGING en un SCRIPT. Tambien podemos agregarlo al ***shebang***.

```
#! /bin/bash/ -x
```
De ese modo, solo tenemos que especificar el nombre del archivo al cual queremos ***debuggear***.

Dentro del codigo podemos establecer zonas donde queremos empezar a ***debuggear***.

```
set -x

echo "This's a debugged code"

set +x
```
De esa forma demarcamos las zonas de DEBBUG.


































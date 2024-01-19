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














#! /bin/bash

# echo "Crea el nombre de tu carpeta:"
#echo "Crea el nombre de tu archivo"
echo "Nombre del archivo:"
# read folder # Lee (lo que el usuario tipee) y guarda en "folder"
read file

# Comprueba si existe
# if [ -d $folder ] # La "-d" hace referencia a un directorio
: 'if [ -f $file ] # La "-f" hace referencia a un archivo
then
   # echo "El directorio '$folder' ya existe"
   # echo "El archivo '$file' ya existe"
   echo "Escribe el contenido" # Si existe que el usuario escriba text
   read contenido # Leemos el texto en una variable
   echo $contenido >> $file # La guardamos en un archivo
else
   # echo "El directorio '$folder' no existe"
   echo "El archivo '$file' no existe"
fi'   

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
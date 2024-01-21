#! /bin/bash

age=10

if [ $age -gt 18 ] && [ $age -lt 40 ]
then
   echo "edad válida"
else
   echo "edad no válida"
fi   
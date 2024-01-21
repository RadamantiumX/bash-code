#! /bin/bash

age=12

if (( age > 18 ))
then
  echo "Eres un adulto"
elif (( age >= 17  ))
then
  echo "Casi eres un adulto" 
else
  echo "Eres un niño"  
fi  
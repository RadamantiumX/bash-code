#! /bin/bash

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
            
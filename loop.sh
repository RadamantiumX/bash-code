#! /bin/bash

# While
: 'number=1

while [ $number -lt 10 ]
do
  echo $number
  number=$((number + 1))
done  '

# For
: '
for i in {0..20..2}
do
  echo $i
done '

for (( i=0; i < 10; i++ ))
do
  echo $i
done  

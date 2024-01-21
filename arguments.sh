#! /bin/bash

: 'echo $@
echo $#'

args=("$@")

echo "Result: ${args[0]}, ${args[1]} y ${args[2]}"
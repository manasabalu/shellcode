#!/bin/bash
#Perform Arithmetic Operations using expr Keyword
#Obtain Operands from Command line
#
echo "The given Operands are: $@"
echo "Addition of $1 and $2 is:"
expr $1 + $2
echo "subtraction of $1 from $2 is:"
expr $1 - $2
echo "Multiplication of $1 and $2 is:"
expr $1 \* $2
echo "Division of $1 by $2 is:"
expr $1 / $2
echo "Module value of $1 % $2 is:"
expr $1 % $2
#End


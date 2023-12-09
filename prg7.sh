#!/bin/bash
#Perform Arithmetic Operations using expr Keyword
#Obtain Operands from Command line
#
echo "The given Operands are: $@"
result=`expr $1 + $2`
echo "Addition of $1 and $2 is:$result"
result=$(expr $1 - $2) #this is another way of working with command substitution
echo "subtraction of $1 from $2 is:$result"
result=`expr $1 \* $2`
echo "Multiplication of $1 and $2 is:$result"
result=`expr $1 / $2`
echo "Division of $1 by using $2 is:$result"
result=`expr $1 % $2`
echo "Module value of $1 % $2 is:"$result"
#End


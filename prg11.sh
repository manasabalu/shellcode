#!/bin/bash
read -p "Enter first number:" num1
read -p "Enter second number:" num2
#Here are arthmetic operations
#Addition
res=$[num1+num2]
#res=`expr $num1 + $num2`
#res=$(expr $ num1 + $num2)
echo "The addition is $res"
#subtraction
res=[num1-num2]
#res=`expr $num1 - $num21
#res=$(expr $num1 - $num2)
echo "The subtraction is $res"
#Division
res=$[num1/num2]
#res=`expr $num1 / $num2`
#res=$(expr $num1 / $num2)
echo "The integer division is $res"
#modulus
res=$[num1%num2]
#res=`expr $num1 % $num2`
#res=$(expr $num1 % $num2)
echo "The modulus is $res"
#multiplication
res=$[num1*num2]
#res=`expr $num1 \* $num2`
#res=$(expr $num1 \* $num2)
echo "The multiplication is $res"
#End


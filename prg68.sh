#!/bin/bash
#Demonstrate Arithmetic Operations using functions
function add {
res=`expr $1 + $2`
echo $res
}
function sub {
res=`expr $1 - $2`
echo $res
}
function mul {
res=`expr $1 \* $2`
echo $res
}
function div {
res=`echo "scale=2;$1/$2"|bc`
echo $res
}
function modulus {
res=`expr $1 % $2`
echo $res
}
#Main program begins here
echo "Arithmetic operations"
if [ $# -eq 0 ]
then
    echo "Provide first number:"
    read num1
    echo "Provide second number:"
    read num2
else
    num1=$1
    num2=$2
fi
echo "The addition is :"
add $num1 $num2
echo "The subtraction is :"
sub $num1 $num2
echo "The multiplication is :"
mul $num1 $num2
echo "The division is :"
div $num1 $num2
echo "The modulus is :"
modulus $num1 $num2
#end of the script

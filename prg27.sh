#!/bin/bash
#these symbols can be used in the compound style ((operaand operator operand))
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
if ((num1>num2))  #if [ $num1 -gt $num2 ]
then
    echo "$num1 is big"
fi
if ((num1<num2))
then
    echo "$num1 is lower"
fi
if ((num==num2))
then
   echo "$num1 and $num2 are equal"
fi
if ((num1>=num2))
then
    echo "$num1 is greater or equal to $num2"
fi
if ((num1<=num2))
then
    echo "$num1 is less than or equal to $num2"
fi
if ((num1!=num2))
then
    echo "$num1 is Not equal to $num2"
fi
#End

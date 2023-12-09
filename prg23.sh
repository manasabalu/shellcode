#!/bin/bash
echo "Find max number from given three numbers"
read -p "first number:" num1
read -p "second number:" num2
read -p "third number:" num3
if [ $num1 -gt $num2 ]
then 
    if [ $num1 -gt $num3 ]
    then
         echo "$num1 is big"
    fi
fi
if [ $num2 -gt $num3 ]
then
   if [ $num2 -gt $num1 ]
   then
        echo "$num2 is big"
   fi
else
    echo "$num3 is big"
fi
#End

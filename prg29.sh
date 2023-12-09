#!/bin/bash
#Demonstrate Logical operators
# -a for and operation.you can also use && instead
# -o for logical or. You cal also user ||instead
# ! for Not
#obtain three numbers from command line. Else read those from the Keyboard
if [ $# -ne 3 ]
then
    read -p "Enter the value of num1:" num1
    read -p "Enter the value of num2:" num2
    read -p "Enter the value of num3:" num3
else
   num1=$1
   num2=$2
   num3=$3
fi
#     if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is big"
else
   if [ $num2 -gt $num3 ]
   then
       echo "$num2 is big"
   else
      echo "$num3 is big"
   fi
fi

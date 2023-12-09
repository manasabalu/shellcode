#!/bin/bash
echo "compare two numbers"
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
if [ $num1 -gt $num2 ]
then
   echo "$num1 is greater than $num2"
fi  #If ends here

if [ $num1 -lt $num2 ]
then
   echo "$num1 is smaller than $num2"
fi

if [ $num1 -eq $num2 ]
then
    echo "Both the given numbers are equal"
fi

if [ $num1 -ne $num2 ]
then
    echo "Both the given numbers are not equal"
fi

#End of the script

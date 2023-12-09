#!/bin/bash
#Demonstrate ! (not) logical operator
#! operator negates the result= ie !true is false and !false is true
echo "0 --> True
1--> False"
read ch #read choice from keyboard. input either 0 or 1
#print 1 if 0 is choosen
if [ ! $ch -eq 0 ]
then
    echo "You entered 0"
fi
if [ ! $ch -eq 1 ]
then
    echo "You entered 1"
fi
#
#Demonstrate and operator ie "-a"
#if both conditions are true then and operator will results to true, else false.
#Lets demonstrate this with three numbers comparision
echo "Enter three numbers one after another"
read num1
read num2
read num3
if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
then
    echo $num1 is big
elif [ $num2 -gt $num3 ]
then
    echo "$num2 is big"
else
   echo "$num3 is big"
fi
#End of the comparision


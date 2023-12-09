#!/bin/bash
#Demonstrate while loop
#print natural numbers
read -p "Enter the upper limit:" n
c=1
while [ $c -le $n ]
do
  echo $c
  ((c++))
done
#End

#!/bin/bash
#demonstrate c style for loop structure
#print natural numbers for loop structure
#print natural numbers for the given uper limit
read -p "enter the upper limit to print natural numbers:" n
for ((i=1;i<=n;i++))
do
   echo $i
done
#end

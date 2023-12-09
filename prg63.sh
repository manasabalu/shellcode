#!/bin/bash
#Read an array elements from the keyboard
#define array a
declare -a a
read -p "Enter the size of an array" n
for ((i=0;i<n;i++))
do
  echo "Enter the $i element:"
  read a[$i]
done
#print the array
echo "The given array is: ${a[@]}"
#End

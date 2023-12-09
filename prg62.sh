#!/bin/bash
#Demonstrating arrays in bash shell
declare -a a
a=(prudvi issac sarath arif sreenivasan)
#print array values
#print the first value
echo "The first value of the array:"
echo ${a[0]}
echo "The fifth value of the array:"
#echo the fifth value
echo ${a[4]}
#To print all the values
echo "The array is:"
echo ${a[@]}
#echo ${a[*]} #same as above line
#print number of values in array
echo "The number of values in the array is:"
echo ${#a[@]}
#end

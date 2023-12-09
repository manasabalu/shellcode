#!/bin/bash
#Demonstrate shell functions
#
#Below is the function Definition
function mycolor()
{
  echo "Iam in mycolor function"
}
#End of the function mycolor
#main script begins here
echo "This script using function..calling function now.."
#call function by using its name
mycolor
echo "After calling function"
mycolor
mycolor
#End

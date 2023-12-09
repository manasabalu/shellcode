#!/bin/bash
if [ $# -ne 2 ]
then
   echo "usage is $0 num1 num2 try again.."
else
   echo "
     - - - - - - - - - - - - -
   MENU
    - - - - - - - - - - - - -
   1. ADD
   2. SUB
   3. MUL
   4. DIV
   5. EXIT
  - - - - - - - - - - - - -
 choose choice: [1..5]:"
read num
case $num in
1)
  echo "`echo $1+$2 |bc`"
  ;;
2)
  echo "`echo $1-$2 |bc`"
  ;;
3)
  echo "`echo $1*$2 |bc`"
  ;;
4)
 echo "`echo $1/$2 |bc`"
 ;;
5)
 exit
 ;;
*)
  echo "Invalid option"
  ;;
esac #case ends here
fi
#End



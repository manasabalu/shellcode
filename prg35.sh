#!/bin/bash
#setting a password for the user
echo -n "Enter you login name:"
read name
echo "Hi..$name Enter Your Password:"
read -s p1
check=0
if [ -z $p1 ]
then
#echo "Password is empty"
 check=1
fi
echo "Re-type your password:"
read -s p2
if [ -z $p2 ]
then
#  echo "Password is empty"
   check=1
fi
if [ "$p1" = "$p2" ] && [ $check -eq 0 ]
then
    echo
    echo "Hi $name Your both password matches"
    #echo "You entered $p1"
    echo $p1|passwd --stdin $name
else
   echo "Sorry $name your password are not matched.. or your password is empty"
fi
#End

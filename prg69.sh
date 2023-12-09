#!/bin/bash
#check if the given user is locked or not
function check {
   str=`grep $1 /etc/shadow | cut -d: -f2`
   echo $str | grep ^'!\$' > /dev/null
 if [ $? -eq 0 ]
   then
 echo "User $1 is locked"
   else
 echo "User $1 is not locked"
   fi
}
#End of the function check
#Main shell script start here
if [ $# -eq 0 ]
  then
  echo -n enter the username:
  read name
else
  name=$1
fi
grep -w ^$name /etc/shadow > /dev/null
if [ $? -eq 0 ]
then
   check $name
else
   echo "User $name not found in the system Try with another user"
fi
#End of the script

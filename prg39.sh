#!/bin/bash
if [ $# -ne 1 ]
then
   echo "You entered invalid number of arguments.. usage $0 username"
else
   echo "Menu
   1. Add user
   2. Delete user
   3. List user Attributes
   4. Exit
   Read your choice 1-4:"
read num
case $num in
1)
  grep -w ^$1 /etc/passwd >/dev/null 2>&1
  if [ $? -ne 0 ]
  then
      useradd $1
      echo "Provide the password:"
      read -sp pass
      echo "$pass" | passwd --stdin $1 > /dev/null 2>&1
  else
     echo "cant create user... It exists...Exiting.."
  fi
;;
2)
  grep -w ^$1 /etc/passwd > /dev/null 2>&1
  if [ $? -eq 0 ]
  then
     userdel -r $1
  else
     echo "cant delete user...It doesnot exists..existing.."
  fi
 ;;
3)
  grep -w ^$1 /etc/passwd > /dev/null 2>&1
  if [ $? -eq 0 ]
  then
      grep -w ^$1 /etc/passwd
      chage -l $1
  else
      echo "cant list user details...It doesnot exists...existing.."
  fi
 ;;
4)
  echo "You have choosen exit option..existing.."
;;
*)
  echo "You have choosen invalid option..existing.."
;;
esac
fi

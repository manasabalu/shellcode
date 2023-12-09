#!/bin/bash
#check if the given user is locked?
read -p "Enter the username:" user
grep -w ^$user /etc/shadow >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
    echo "User found..checking if $user locked.."
    grep -w ^$user /etc/shadow |cut -f2 -d:| grep ^! >/dev/null 2>&1
    res=$?
    if [ $res -eq 0 ]
    then
        echo "user is locked"
    else
        echo "user $user is not locked.."
    fi
else
    echo "user $user not found"
fi 
#End of the program


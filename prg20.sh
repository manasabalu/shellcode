#!/bin/bash
read -p "Enter the username:" u1
#check if user exists
grep -w ^$u1 /etc/passwd >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
    echo "user $u1 exists in this system.. proceeding to lock the user"
    passwd -l $u1 >/dev/null 2>&1
    res=$?
    if [ $res -eq 0 ]
    then
       echo "$u1 locking succeed"
    else
       echo "user $u1 could not be locked...checck with l2 team"
    fi
else
    echo "user $1 doesnot exist.."
fi

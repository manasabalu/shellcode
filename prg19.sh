#!/bin/bash
echo -n "Enter user name to check if it exists in this system $(hostname):"
read u1
grep -w ^$u1 /etc/passwd >/dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
    echo "$u1 exists in this server $(hostname)"
else
    echo "$u1 doesnt exist in this server $(hostname)"
fi
#End of the program

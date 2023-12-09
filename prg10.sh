#!/bin/bash
read -p "Enter a username to create:" user
useradd $user
read -sp "Enter the Password for the user $User:" Pass
echo "$Pass"|Passwd --stdin $user >/dev/null 2>&1
#End

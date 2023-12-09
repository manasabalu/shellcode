#!/bin/bash
if [ `id -u` -eq 0 ]
then
    echo "You are root"
else
   echo "you are not root"
fi
#End of the program

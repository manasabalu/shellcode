#!/bin/bash
#Find the given vg existing in the system. Rewad vgname from the command line.
if [ $# -eq 0 ]
then
    echo "You have not entered any argument"
    echo "usage is $0 VGNAME"
    echo "Existing.."
else
   vgs|grep -w $1 >/dev/null 2>&1
   if [ $? -eq 0 ]
   then
       echo "The give vg $1 exists"
   else
      echo "The given vg $1 doesnt exists"
   fi
fi

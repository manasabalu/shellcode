#!/bin/bash
a=0
n=0
t=0
exec < c.txt
while read host
do
   ping -c 2 $host >/dev/null 2>&1
   if [ $? -eq 0 ]
   then
       echo "$host is alive"
       ((a++))
   else
       echo "$host is not alive"
       ((n++))
   fi
   ((t++))
done
#End

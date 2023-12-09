#!/bin/bash
exec < /etc/passwd
c=0
while read myvar
do
   echo $myvar
   ((c++))
done
echo "There are $c lines in the given file"
#End

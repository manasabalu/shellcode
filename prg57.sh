#!/bin/bash
if [ $# -eq 1 ]
then
   fname=$1
else
   read -p "Provide the file name (absolute path):" fname
fi
if [ -e $fname -a -f $fname ]
then
 exec < $fname
 c=0
while read myvar
do
   echo $myvar
   ((c++))
done
echo "There are $c lines in the given file"
else
  echo "can't read the file $fname. The file $fname is invalid"
fi
#End

#!/bin/bash
#Read the file
function rfile () {
exec <$1
while read val
do
  echo $val
done
} #End of the rfile function

#Main
read -p "Enter the filename:" fname
if [ -e $fname ] && [ -f $fname ]
then
    rfile $fname
else
    echo "Given file $fname is invalid"
fi
#End

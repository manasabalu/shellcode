#!/bin/bash
#checl if the file exists in the system
#ls command would return false if file not found
echo "Enter the file name with absolute path"
read filename
ls $filename > /dev/null 2>&1
res=$?
if [ $res -eq 0 ]
then
    echo "the given file $fname found"
else
    echo "the given file $fname doesn't exist"
fi
#End of the script

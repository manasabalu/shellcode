#!/bin/bash
#perform string tests
echo "Enter the text"
read str
if [ $str ]
then
   echo "string exists and is not null"
fi

if [ -n $str ]
then
   echo "string exists and is not zero length"
fi
 
if [ -z $str ]
then
    echo "String exists and is zero length"
fi

echo "The given string is $str"
echo "Now unset the variable"
unset str
echo "After unsent,testing the string [ \$str ]"
if [ $str ]
then
   echo "string exists and is not null"
else
   echo "It is null string"
fi
#End

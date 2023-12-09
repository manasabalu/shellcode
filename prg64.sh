#!/bin/bash
#Read array till you hit enter key as input
declare -a a
i=0
while true
do
  read -p "Enter a value.(End with Enter keyy):" val
  if [ -z $val ]
  then
      break
  else
     a[$i]=$val
     ((i++))
  fi
done
echo "The given array is ${a[@]}"
#End

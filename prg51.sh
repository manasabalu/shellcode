#!/bin/bash
#Read variable till you hit enter key ie blank variable
v=1
while [ -n "$v" ]
do
  echo "Enter the text. End with Enter key.."
  read v
  echo "You entered: $v"
done
#End

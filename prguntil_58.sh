#!/bin/bash
#Till condition becomes true, the loop will be execute.
count=0
until [ $count -gt 10 ]
do
  echo $count
  ((count++))
done
#End

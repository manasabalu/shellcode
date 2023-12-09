#!/bin/bash
#Line added by the trainer
#script to perform Arithmetic Operations
echo "Enter var1 and var2:"
read v1;read v2
opt=""
select opt in + - \* e
do
#echo "You selected $opt"
case $opt in
+) echo `echo $v1 + $v2|bc` ;;
-) echo `echo $v1 - $v2|bc` ;;
\*) echo `echo $v1 \* $v2|bc` ;;
e) break ;;
*) echo "$opt is invalid operator.."
esac
done

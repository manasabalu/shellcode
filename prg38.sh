#!/bin/bash
echo "Enter var1 and var2"
read v1;read v2
opt=""
echo "Enter Arth.operators:+,-,*. Type e for exit"
read opt
case $opt in
+) echo `echo $v1 + $v2 |bc` ;;
-) echo `echo $v1 - $v2 |bc` ;;
\*) echo `echo $v1 \* $v2 |bc` ;;
e) exit ;;
*) echo "$opt is invalid operators.."
esac
#end

#!/bin/bash
echo "you are testing pre and post Increment and Decrement operators :-)"
echo "Enter a number - value of x: "
read x
echo "value after post Increment of x by executing x++ is $[x++]" #$((x++))
echo "Value after pre Increment of x by executing ++x is $[++x]" #$((++x))
echo "Value after post Decrement of x by executing x-- is $[x--]" #$((x--))
echo "Value after pre Decrement of x by executing --x is $[--x]" #$((--x))
#End othe script

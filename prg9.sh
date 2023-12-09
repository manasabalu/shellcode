#!/bin/bash
#Demonstrating command substitution
echo "I am `Whoami`"
echo "My login name is `logname`"
#or you can use below statement
echo "My login name is $(logname)"
echo "I am using $(uname) operating system"
#End of the program


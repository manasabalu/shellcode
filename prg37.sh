#!/bin/bash
echo -e "\tsystem Information:-"
echo -e "\t********************"
echo "
   1. Display your working kernal name
   2. Display your shell name
   3. Login name
   4. Today Date
   5. current working directory path"
echo -e "\t********************"
echo -n "Enter your option:" ;read n
case $n in
1) echo "Working kernal name is $(uname)
   version is $(uname -r)"
;;
2)echo "working shell is $SHELL
  version is $BASH_VERSION"
;;
3) echo "My login name:$LOGNAME and login id is $uid"
 ;;
4) echo "Today: `date +%D`" 
;;
5) echo "`pwd`"
;;
*) echo "sorry $n is invalid option.. select from [1 to 5]"
esac
#End

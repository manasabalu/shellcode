#!/bin/bash
#Demonstration case conditional statement
read -p "Enter the os name (Ex:solaries, aix, linux, unix, windows, macos):" os

case $os in
     solaries)
           echo "The os entered is solaries"
           ;;
     aix)
         echo "The operating system is AIX"
         ;;
     linux)
         echo "The os entered is Linux"
          ;;
     unix)
        echo "The os entered in unix"
         ;;
     windows)
         echo "The os entered in windows"
          ;;
     *)
       echo "You entered other than solaries, aix, linux, unix, windows, macos.."
         ;;
esac
#End

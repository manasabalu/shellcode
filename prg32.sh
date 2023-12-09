#!/bin/bash
#read marks in 5 subjects and calculate its average using bc command
#if not given inputs via command line;program should exit prompting relevant message
if [ $# -ne 5 ]
then
       echo "Invalid inputs  
       usage is $0 marks1 marks2 marks3 marks4 marks5
       Try again...."
else
      echo "Obtained marks are
      subject1: $1
      subject1: $2
      subject1: $3
      subject1: $4
      subject1: $5

      Total Marks: `echo $1+$2+$3+$4+$5 |bc`
      Average is: `echo "scale=2;($1+$2+$3+$4+$5)/5" |bc`"
fi
#End of the program

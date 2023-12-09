#!/bin/bash
echo "You entered $# number of Arguments"
echo "The Arguments are $@"
echo "The Arguments are $*"
echo "The first Argument is: $1"
echo "Shifting by one"
shift 1
echo "No the Positional Parameters after shift: $@"
echo "The program name is: $0"
#End

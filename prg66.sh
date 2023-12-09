#!/bin/bash
#Define the function
function colorme()
{
  echo "The color is $1"
}
#main function
echo "before calling the function"
#send positional parameter to colorme function
colorme red
colorme black
colorme green
colorme yellow
echo "After calling colorme"
#End

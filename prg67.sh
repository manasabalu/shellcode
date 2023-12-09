#!/bin/bash
function colorme()
{
  echo "In colorme function"
  echo $1
  return 66
}
#main program
echo "In main program"
colorme red
colorme blue
colorme green
echo $? #This prints the function returned value.
echo "Again in main program"
#End

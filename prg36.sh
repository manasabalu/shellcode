#!/bin/bash
echo "Enter your name:"
read name
case $name in
manasa|MANASA|manasa)
    echo "Entered was $name"
    ;;
*)
  echo "In the default option...Entered was $name"
  ;;
esac

#!/bin/bash
NAME= "Rohit"
if [ -z $NAME ]
then 
  echo "empty"
  exit 0
else
  echo $NAME
fi

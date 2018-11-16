#!/usr/bin/env bash


#Write a script that moves one or more files to a trash can.
#The trash can directory can be configurable in the script.
#The script can take one or more files as argument.
#Every file in the argument list will be moved from its current location to the trash can.
#If a file does not exist, it will be logged in the console and move to the next one on the list.
if [[ -z $1 ]]; then
  trash=$1
else
  trash=trash
fi
mkdir $trash

mv "$2" "$trash/$2.trash"

#for i in *.log;do cp "$i" "renamedLogs/$i.bck";done

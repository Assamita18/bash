#!/usr/bin/env bash

#mkdir renamedLogs2

#Part1 -> separate filename in variables - abc.01.txt - done
#Part2 -> get modification date. Convert epoch to readable.
#Part3 -> rename to specs. 2018111201.abc.txt

for i in *.log
do
extension=$(echo $i|cut -f 3 -d ".")
order=$(echo $i|cut -f 2 -d ".")
name=$(echo $i|cut -f 1 -d ".")
modification=$(stat -f %m abc.09.log)

echo "extension is $extension"
echo "modification is $modification"
echo $modification$order.$name.$extension
done
#modification=stat -f  %m $i
#cp "$i" "renamedLogs2/$modification$order.$extension";done

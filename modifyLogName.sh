#!/usr/bin/env bash

#mkdir renamedLogs2

#Part1 -> separate filename in variables - abc.01.txt - done
#Part2 -> get modification date.
#Part3 -> rename to specs. -> 2018111308.abc.log

for i in *.log
do
extension=$(echo $i|cut -f 3 -d ".")
order=$(echo $i|cut -f 2 -d ".")
name=$(echo $i|cut -f 1 -d ".")
modification=$(stat -f %m $i)
dateis=$(date -r $modification '+%Y%m%d')
# echo "extension is $extension"
# echo "modification is $modification"
# echo $dateis$order.$name.$extension
cp "$i" "renamedLogs2/$dateis$order.$name.$extension"
echo "renamed $i as $dateis$order.$name.$extension"

done

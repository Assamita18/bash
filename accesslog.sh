#!/usr/bin/env bash

for i in logs/*
do
owner=$(stat $i | cut -f 5 -d " ")
atime=$(date -r $(stat -f %a $i))
mtime=$(date -r $(stat -f %m $i))
ctime=$(date -r $(stat -f %c $i))
#atimea=$(date -r $atime '+%Y%m%d')
echo "File $i belongs to $owner, was accesed on $atime." >> report.txt

# if [[ "$mtime" == "$ctime" ]]; then
#   echo "File $i belongs to $owner, was accesed on $atime." >> whodidit.txt
# fi
done

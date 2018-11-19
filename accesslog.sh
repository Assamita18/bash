#!/usr/bin/env bash

for i in logs/*
do
owner=$(stat $i | cut -f 5 -d " ")
atime=$(stat $i | cut -c 54-75)
mtime=$(stat $i | cut -c 77-98)
ctime=$(stat $i | cut -c 99-121)

echo "File $i belongs to $owner, was accesed on $atime." >> whodidit.txt

# if [[ "$mtime" == "$ctime" ]]; then
#   echo "File $i belongs to $owner, was accesed on $atime." >> whodidit.txt
# fi
done

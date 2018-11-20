#!/usr/bin/env bash

classname=$1
directory=$($2 + "/")

for i in $2*.jar
do
  result=$(zipinfo -1 $i | grep $1.class)
  if [[ -z $result ]]; then
    echo "not found in $i"
  else
    echo "found $1 in $i -> $result"
  fi

done;

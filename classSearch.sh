#!/usr/bin/env bash

classname=$1
directory=$2


for i in $2*.jar
do
  result=$(zipinfo -1 $i | grep -w $1.class)
  if [[ -z $result ]]; then
    echo "not found in $i"
  else
    echo "$(tput setaf 1)Found $1 in $i -> $result"
    tput setaf 0
  fi

done;

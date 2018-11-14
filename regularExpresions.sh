#!/usr/bin/env bash

regex='[0-9]+$'

if [[ $1 =~ $regex ]]; then
  echo 'matches regex'
else
  echo 'does not match regex'
fi

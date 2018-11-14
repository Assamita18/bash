#!/usr/bin/env bash

regex1='^\\d+$'
regex2='[^-+*\/]'

if [[ $1 =~ $regex1 ]]; then
  echo "The first one is not a number, bruh. Try again with a number, bruh."
  exit 0
fi

if [[ $2 =~ $regex2 ]]; then
  echo "not a valid operator, bruh. Try again with a valid operator, bruh."
  exit 0
fi

if [[ $3 =~ $regex1 ]]; then
  echo "the second one is not a number, bruh. Try again with a number, bruh."
  exit 0
fi


echo "That is:"
echo $(($1 ${2//\\}  $3))

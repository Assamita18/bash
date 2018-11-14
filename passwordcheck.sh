#!/usr/bin/env bash

#Check $1 for all criteria.


if [[ "$1" -ge 8 && "$1" == *[A-Z]* && "$1" == *[a-z]* && "$1" == *[0-9]* ]]; then
  echo "Password complies with requirements"
else echo "Password does not comply with requirements"
fi

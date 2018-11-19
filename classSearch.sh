#!/usr/bin/env bash

find . -name "*.jar" | xargs -n1 otherscript.sh $className


zipinfo -1 $2 | grep $1 | sed 's/.*/$2/g' | uniq

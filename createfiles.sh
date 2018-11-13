#!/usr/bin/env bash

for i in `seq -w 1 10`
do
  touch logs/abc.$i.log
done

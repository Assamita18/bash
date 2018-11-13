#!/usr/bin/env bash
mkdir logs
for i in `seq -w 1 10`
do
  touch logs/abc.$i.log
done

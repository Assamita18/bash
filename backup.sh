#!/usr/bin/env bash

mkdir renamedLogs
mv logs/*.log renamedLogs
for i in renamedLogs/*.log
do mv "$i" "$i.bck";done

#!/usr/bin/env bash

mkdir renamedLogs
for i in *.log;do cp "$i" "renamedLogs/$i.bck";done

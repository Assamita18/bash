#!/usr/bin/env bash

mkdir logs
mv *.log /logs
for f in *.log; do mv "$f" "${f/.log/bck}";done

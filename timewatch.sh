#!/usr/bin/env bash

startdate=$(date +%s)
endate=$(($startdate + 10 ))

while [[ $endate != $(date +%s) ]]; do
  echo $endate
  sleep 5s
done



#if atime is lower than mtime, then ok.
#if atime is higher than mtime, then changes were made.

# Log all accesses to the files in /etc during the course of a single day.
# This information should include the filename, user name, and access time. If any alterations to the files take place, that should be flagged.
# Write this data as neatly formatted records in a log file.

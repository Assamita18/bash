#!/usr/bin/env bash
interval=180
startdate=$(date +%s)
endate=$(($startdate + $interval ))

oldatime=1
oldmtime=1
oldctime=1

echo "We are going to report on changes and accesses every 6 seconds" >> report.txt
while [[ $endate != $(date +%s) ]]; do
  for i in logs/*.log
  do
  owner=$(stat $i | cut -f 5 -d " ")
  newatime=$(stat -f %a $i)
  newmtime=$(stat -f %m $i)
  newctime=$(stat -f %c $i)
  echo "elapsed one cycle"

  if [[ $newatime > $oldatime ]]; then
    echo "File $i belongs to $owner, was accessed on $(date -r $newatime)" >> report.txt
    oldatime=$newatime

    echo "somebody accessed"
  fi
  if [[ $newmtime > $oldmtime ]]; then
    echo "File $i belongs to $owner, was modified on $(date -r $newmtime)" >> report.txt
    oldmtime=$newmtime

    echo "somebody modified"
  fi

  sleep 6
done






done

#if atime is lower than mtime, then ok.
#if atime is higher than mtime, then changes were made.

# Log all accesses to the files in /etc during the course of a single day.
# This information should include the filename, user name, and access time. If any alterations to the files take place, that should be flagged.
# Write this data as neatly formatted records in a log file.

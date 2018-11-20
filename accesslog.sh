#!/usr/bin/env bash
interval=$1
startdate=$(date +%s)
endate=$(($startdate + $interval ))

oldatime=$startdate
oldmtime=$startdate
oldctime=$startdate

if [[ $interval -le 0 ]]; then
  echo "we need an observation interval greater than 0 seconds, try again."
  exit 0
fi

echo "We are going to report on changes and accesses every 6 seconds" >> report.txt
echo "Today is $(date -r $startdate) " >> report.txt
while [[ "$endate" > "$(date +%s)" ]]; do
  for i in logs/*.log
  do
  owner=$(stat $i | cut -f 5 -d " ")
  newatime=$(stat -f %a $i)
  newmtime=$(stat -f %m $i)
  newctime=$(stat -f %c $i)


  if [[ "$newatime" > "$oldatime" ]]; then
    echo "$i belongs to $owner, was accessed on $(date -r $newatime)" >> report.txt
    oldatime=$newatime

    echo "somebody accessed"
  fi

  if [[ "$newmtime" > "$oldmtime" ]]; then
    echo "$i belongs to $owner, was modified on $(date -r $newmtime)" >> report.txt
    oldmtime=$newmtime

    echo "somebody modified"
  fi

  if [[ "$newctime" > "$oldctime" ]]; then
    echo "$i belongs to $owner, was created on $(date -r $newctime)" >> report.txt
    oldctime=$newctime

    echo "somebody created"
  fi
done;
  echo "elapsed one cycle on $(date +%s)"
  sleep 6
done;


# Log all accesses to the files in /etc during the course of a single day.
# This information should include the filename, user name, and access time. If any alterations to the files take place, that should be flagged.
# Write this data as neatly formatted records in a log file.

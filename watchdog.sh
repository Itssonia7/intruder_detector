#!/bin/bash 
who > active_users.txt



if [ $(grep -v "sonia" active_users.txt | wc -l) -gt 0 ]; then 
  echo "ALERT: Intruder detected at $(date '+%Y-%m-%d %H:%M:%S')" >> alerts.log
  grep -v "sonia" active_users.txt >> alerts.log
  echo "----------------------------------------" >> alerts.log
fi
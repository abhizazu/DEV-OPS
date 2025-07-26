#!/bin/bash

THRESHOLD=80
USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%" | tee -a disk_alert.log
else
  echo "Disk usage is OK. Current usage: $USAGE%" | tee -a disk_alert.log
fi









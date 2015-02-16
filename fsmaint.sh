#!/bin/bash
mount=“/storage”
 
# Check mount status
if grep -qs "$mount" /proc/mounts; then
  echo “Storage FS mounted”
else
  echo “Storage FS is not mounted… Attempting to rectify…”
  mount "$mount"
  if [ $? -eq 0 ]; then
   echo “Storage FS mounted successully!”
  else
   echo “Something went wrong with the mount...”
 fi
fi
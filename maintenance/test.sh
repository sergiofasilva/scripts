#!/bin/bash

#date
# Temporary directories
TMP_DIRECTORIES=("$HOME/tmp" "$HOME/Downloads")

for d in "${TMP_DIRECTORIES[@]}"
do
	find "$d" -type f -mtime +30 -print
	find "$d" -type d -empty -print
	#find "$d" -type f -empty -print
  braces={} find "$d" -type d \( -empty -o -exec sh -c '
   echo | find "$1" ! \( -type f -name .DS_Store \) -exec sh -c "
      for f do read dummy || { kill -s INT \"\$PPID\"; exit 1; } ; done
   " inner-sh "$braces" +
' outer-sh {} \; \) -print
	echo "$d"
done

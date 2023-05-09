#!/bin/bash

# Temporary directories
TMP_DIRECTORIES=("$HOME/tmp" "$HOME/Downloads")

for d in "${TMP_DIRECTORIES[@]}"
do
	find "$d" -mindepth 2 -type f -name ".DS_Store" -delete -print | xargs -L1 echo $(date +%Y-%m-%d" "%H:%M)
	find "$d" -ctime +30 -delete -print -not -type d | xargs -L1 echo $(date +%Y-%m-%d" "%H:%M)
	find "$d" -type f -empty -delete -print | xargs -L1 echo $(date +%Y-%m-%d" "%H:%M)
	find "$d" -type d -empty -delete -print | xargs -L1 echo $(date +%Y-%m-%d" "%H:%M)
done

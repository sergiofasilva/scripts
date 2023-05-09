#!/bin/bash

# Change to script current durectory
cd "$(dirname "$0")" || exit
mkdir -p "$HOME/tmp"

# Detele old files and empty files/directories from temporary directories
./delete_old_tmp.sh >> "$HOME/tmp/maintenance.delete_old_files.month$(date +%m).log"
#./test.sh > "$HOME/tmp/maintenance.test.$(date +%Y-%m-%d_%H%M).log"

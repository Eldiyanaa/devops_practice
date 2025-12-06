#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/processor.log"

log() {
     echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"  >> "$LOG_FILE"
}

if [ -z "$1" ]; then
     echo "Usage: $0 <directory>"
     exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
     echo "Error: Directory '$DIR' does not exist."
     log "Error: Directory '$DIR' does not exist."
     exit 1
fi

COUNT=$(find "$DIR" -maxdepth 1 -type f 2>/dev/null | wc -l)

echo "Found $COUNT files in $DIR"
log "Processed directory '$DIR' - $COUNT files"


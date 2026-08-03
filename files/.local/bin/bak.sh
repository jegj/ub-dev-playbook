#!/usr/bin/env bash
# bak - create a timestamped backup of a file
# Usage: bak <file> [file ...]

set -euo pipefail

if [[ $# -eq 0 ]]; then
    echo "Usage: bak <file> [file ...]" >&2
    exit 1
fi

TIMESTAMP=$(date +%Y%m%d-%H%M%S)

for file in "$@"; do
    if [[ ! -e "$file" ]]; then
        echo "bak: '$file' not found" >&2
        continue
    fi

    backup="${file}.${TIMESTAMP}.bak"

    cp -a -- "$file" "$backup"
    echo "Created backup: $backup"
done

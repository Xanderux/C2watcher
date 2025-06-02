#!/bin/bash

set -e

mkdir -p data

for file in ./queries/*; do
  if [ -f "$file" ]; then
    query_content=$(< "$file")
    results=$(.github/bin/uncover -silent -on "$query_content" -l 10000 | sort -u)

    basefile=$(basename "$file")
    target_file="data/$basefile"

    if [ ! -f "$target_file" ] || ! cmp -s <(echo "$results") "$target_file"; then
        echo "$results" > "$target_file"
    fi
  fi
done

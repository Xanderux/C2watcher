#!/bin/bash

set -e

mkdir -p data

for file in ./queries/*; do
  if [ -f "$file" ]; then
    query_content=$(< "$file")
    results=$(docker run -e ONYPHE_API_KEY="$ONYPHE_API_KEY" uncover -silent -on "$query_content")

    basefile=$(basename "$file")
    target_file="data/$basefile"

    if [ ! -f "$target_file" ] || ! cmp -s <(echo "$results") "$target_file"; then
        echo "$results" > "$target_file"
    fi
  fi
done

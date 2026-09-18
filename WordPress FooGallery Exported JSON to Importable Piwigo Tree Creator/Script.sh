#!/usr/bin/env bash
# By Abdullah As-Sadeed

set -euo pipefail

INPUT_JSON_FILE="FooGallery.json"
OUTPUT_DIRECTORY="Piwigo"

mkdir -p "$OUTPUT_DIRECTORY"

jq -c '.[]' "$INPUT_JSON_FILE" | while read -r gallery; do
  name=$(echo "$gallery" | jq -r '.name')
  folder=$(echo "$name" | tr '/' '_' | sed 's/[[:space:]]\+$//')
  gallery_directory="$OUTPUT_DIRECTORY/$folder"

  mkdir -p "$gallery_directory"
  echo "Processing Gallery: $name"

  echo "$gallery" | jq -c '.attachments[]' | while read -r att; do
    url=$(echo "$att" | jq -r '.url')
    caption=$(echo "$att" | jq -r '.caption // empty')
    extension="${url##*.}"

    if [[ -n "$caption" ]]; then
      base=$(echo "$caption" |
        tr -d '\000' |
        sed 's#[/\\:*?"<>|]##g' |
        sed 's/[[:space:]]\+$//')
    else
      base=$(basename "$url" | sed -E 's/\.[^.]+$//')
    fi

    filename="${base}.${extension}"

    if [[ -f "$gallery_directory/$filename" ]]; then
      echo "  Skipping Existing $filename"
      continue
    fi

    echo "  Downloading $filename"
    curl -L --fail --silent --show-error \
      -o "$gallery_directory/$filename" \
      "$url"
  done
done

echo "Importable Piwigo tree has been created in: $OUTPUT_DIRECTORY"

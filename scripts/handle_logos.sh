#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source/raw"

for svg in "$SRC"/*.svg; do
  filename=$(basename "$svg")
  sed 's|<svg\([^>]*\)>|<svg\1><style>@media(prefers-color-scheme:dark){path{fill:white}}</style>|' "$svg" >"$DIR/../source/$filename"
  svgo --quiet "$DIR/../source/$filename"
  echo "$filename"
done
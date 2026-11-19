#!/usr/bin/env bash
# Copies the deployable ColorBrewer site into an output folder.
# The app is plain static files, so "building" is just choosing what ships:
# the Flash version, sources and repo files stay behind.
#
#   scripts/build.sh <out-dir>     (default: dist)
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="${1:-$ROOT/dist}"

FILES=(index.html style.css colorbrewer.js colorbrewer_schemes.js cmyk.js LICENCE.txt)
DIRS=(images map learnmore export)

rm -rf "$OUT"
mkdir -p "$OUT"
for f in "${FILES[@]}"; do cp "$ROOT/$f" "$OUT/"; done
for d in "${DIRS[@]}"; do cp -R "$ROOT/$d" "$OUT/"; done
find "$OUT" -name .DS_Store -delete

echo "huebrew: built $(find "$OUT" -type f | wc -l | tr -d ' ') files ($(du -sh "$OUT" | cut -f1)) into $OUT"

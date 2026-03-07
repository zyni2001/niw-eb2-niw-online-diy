#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 output.pdf input1.pdf [input2.pdf ...]" >&2
  exit 1
fi

out="$1"
shift

gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 -sOutputFile="$out" "$@"


#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 input.pdf output.pdf" >&2
  exit 1
fi

in="$1"
out="$2"

gs -q -o "$out" \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.6 \
  -dFIXEDMEDIA \
  -dPDFFitPage \
  -dDEVICEWIDTHPOINTS=612 \
  -dDEVICEHEIGHTPOINTS=792 \
  "$in"


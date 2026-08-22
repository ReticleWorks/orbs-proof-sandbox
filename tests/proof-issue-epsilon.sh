#!/usr/bin/env bash
set -euo pipefail

fixture="proof-issue-epsilon.txt"

if [[ ! -f "$fixture" ]]; then
  echo "missing fixture: $fixture" >&2
  exit 1
fi

if ! cmp -s "$fixture" <(printf '%s\n' 'puck-proof-issue-epsilon-20260821'); then
  echo "fixture contents differ: $fixture" >&2
  exit 1
fi

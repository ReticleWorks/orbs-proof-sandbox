#!/usr/bin/env bash
set -euo pipefail

cmp -s proof-issue-delta.txt <(printf '%s\n' 'puck-proof-issue-delta-20260821')

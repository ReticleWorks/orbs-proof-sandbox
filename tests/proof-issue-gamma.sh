#!/usr/bin/env bash
set -euo pipefail

expected='puck-proof-issue-gamma-20260821'
actual=$(cat proof-issue-gamma.txt) || exit 1
[[ $actual == "$expected" && $(wc -l < proof-issue-gamma.txt) -eq 1 ]]

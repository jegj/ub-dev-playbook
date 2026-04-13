#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./ralph/once.sh <plan-and-prd>"
  exit 1
fi

commits=$(git log -n 5 --format="%H%n%ad%n%B---" --date=short 2>/dev/null || echo "No commits found")
prompt=$(cat ralph/prompt.md)

claude --permission-mode acceptEdits \
  "Previous commits: $commits Plan and PRD: $1 $prompt"

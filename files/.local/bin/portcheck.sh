#!/usr/bin/env bash
# portcheck — show listening ports with owning process
# Usage: portcheck [port]
set -euo pipefail

if [[ $# -eq 1 ]]; then
  ss -tlnp | awk -v port=":$1" '$4 ~ port || $5 ~ port'
  echo ""
  echo "Process detail:"
  lsof -i :"$1" -nP 2>/dev/null || echo "  (lsof unavailable or no match)"
else
  echo "All listening TCP/UDP ports:"
  echo ""
  ss -tulnp | column -t
fi

#!/usr/bin/env bash
set -euo pipefail

# Delegates to workspace benchmark harness for now.
# Later this repo can own a fully self-contained harness.

if [[ ! -f /data/workspace/scripts/mcp-bench/run-gog-vs-mcp-bench.sh ]]; then
  echo "Missing benchmark harness at /data/workspace/scripts/mcp-bench/run-gog-vs-mcp-bench.sh"
  exit 1
fi

bash /data/workspace/scripts/mcp-bench/run-gog-vs-mcp-bench.sh

echo "Done. Results: /data/workspace/intermediate/mcp-bench/results.csv"

# google-workspace-mcp-cli

Productized CLI wrapper + benchmarking toolkit for Google Workspace MCP workflows.

## Purpose
- Provide a stable CLI interface over Google Workspace MCP tools
- Benchmark throughput and token-impact across execution paths
- Support iterative optimization with measurable deltas

## Repo goals
1. Ship a usable CLI for day-to-day Google ops
2. Maintain benchmark harness + reproducible results
3. Track optimization history (payload, latency, token_est)

## Gmail unsubscribe prototype usage
- Inspect unsubscribe options from List-Unsubscribe headers:
  - `node alan-google.ts get-unsubscribe-options --message-id <gmail_message_id>`
- Dry-run auto strategy (no external request):
  - `node alan-google.ts unsubscribe-email --message-id <gmail_message_id> --dry-run true`
- Force mailto fallback (creates draft by default, does not auto-send):
  - `node alan-google.ts unsubscribe-email --message-id <gmail_message_id> --method mailto`

## Gmail attachment send usage
- `send-email` now accepts optional `--attachment-paths` (comma-separated file paths).
- Example:
  - `node alan-google.ts send-email --to ops@example.com --subject "Morning Report" --body "See attached." --attachment-paths "/tmp/report.md,/tmp/metrics.csv"`
- Raw JSON path is still supported via `--raw`:
  - `--raw '{"to":"ops@example.com","subject":"Morning Report","body":"See attached.","attachmentPaths":["/tmp/report.md"]}'`

## Initial structure
- `src/` CLI source
- `scripts/` generation/build/benchmark automation
- `benchmarks/` benchmark specs + snapshots
- `docs/` runbooks and decisions

## Local-first policy
This repository is intended for production-style development under `/data/dev` with 1:1 local git + GitHub mapping.

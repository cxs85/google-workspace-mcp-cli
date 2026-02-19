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

## Initial structure
- `src/` CLI source
- `scripts/` generation/build/benchmark automation
- `benchmarks/` benchmark specs + snapshots
- `docs/` runbooks and decisions

## Local-first policy
This repository is intended for production-style development under `/data/dev` with 1:1 local git + GitHub mapping.

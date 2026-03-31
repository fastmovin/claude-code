# Environment variables (code references)

!!! warning "Unofficial and incomplete"
This list is **not** a substitute for the official [Environment variables](https://code.claude.com/docs/en/env-vars) reference. It only shows names that appear in the recovered `src/` tree as `process.env.*` (or standard vars like `HOME`). Behavior and stability are defined by Anthropic’s product, not this mirror.

## User-facing and integration (examples found in source)

| Variable                           | Where used (indicative)                                                                     |
| ---------------------------------- | ------------------------------------------------------------------------------------------- |
| `ANTHROPIC_BASE_URL`               | API client / proxy routing (`toolSearch.ts`, auth paths)                                    |
| `CLAUDE_CODE_GIT_BASH_PATH`        | Windows Git Bash resolution (`windowsPaths.ts`)                                             |
| `CLAUDE_DEBUG`                     | Debug logging (`warningHandler.ts`)                                                         |
| `CLAUDE_CODE_ENABLE_TELEMETRY`     | OpenTelemetry enable (`telemetry/instrumentation.ts`)                                       |
| `CLAUDE_CODE_ENABLE_TASKS`         | Tasks mode (`tasks.ts`)                                                                     |
| `CLAUDE_CODE_TASK_LIST_ID`         | Default task list id (`tasks.ts`)                                                           |
| `CLAUDE_CODE_PLAN_MODE_REQUIRED`   | Plan mode gate (`teammate.ts`)                                                              |
| `CLAUDE_CODE_WORKSPACE_HOST_PATHS` | Telemetry workspace mapping (`telemetry/events.ts`)                                         |
| `ENABLE_TOOL_SEARCH`               | Tool search beta (`toolSearch.ts`)                                                          |
| `GITHUB_ACTIONS` / `GITHUB_*`      | CI metadata in analytics (`user.ts`)                                                        |
| `HOME`                             | XDG / paths (`xdg.ts`)                                                                      |
| `MAX_THINKING_TOKENS`              | Thinking toggle (`thinking.ts`)                                                             |
| `NODE_ENV`                         | Dev/test branches                                                                           |
| `OTEL_*`                           | OpenTelemetry exporters and endpoints (`telemetry/instrumentation.ts`, `sessionTracing.ts`) |
| `SHELL`                            | Shell spawning (`terminalPanel.ts`, `windowsPaths.ts`)                                      |
| `TMUX` / `TMUX_PANE`               | Worktree / swarm backends (`worktree.ts`, `swarm/backends/detection.ts`)                    |
| `TMPDIR`                           | Temp paths (`tmuxSocket.ts`)                                                                |
| `USER_TYPE`                        | Internal Anthropic gating (`undercover.ts`, many modules)                                   |

## Internal / experimental (often `USER_TYPE === 'ant'`)

Variables such as `CLAUDE_CODE_UNDERCOVER`, `ANT_OTEL_*`, `ANT_CLAUDE_CODE_METRICS_ENDPOINT`, `BETA_TRACING_ENDPOINT`, `CCR_FORCE_BUNDLE`, `CCR_ENABLE_BUNDLE`, and similar appear for **employee or beta** builds. Treat them as undocumented implementation details.

## Regenerate a full grep index

From the repo root:

```bash
rg -o 'process\.env\.[A-Za-z0-9_]+' src --glob '*.ts' --glob '*.tsx' | sort -u
```

The script `scripts/gen-appendices.sh` can write the output to `docs-site/docs/appendix/_generated-env-vars.txt` (gitignored) for local analysis.

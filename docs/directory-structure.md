# `src/` directory structure

This document mirrors the **top levels** of the recovered `src/` tree in this repository (as of the leak reconstruction). Deeper nesting is omitted except where it helps navigation.

## Package root files

| File                        | Notes                                                                                           |
| --------------------------- | ----------------------------------------------------------------------------------------------- |
| `main.tsx`                  | CLI entry: Commander setup, `preAction` trust/settings/telemetry, routing to REPL or print mode |
| `commands.ts`               | Command registry                                                                                |
| `tools.ts`                  | Tool registry (see also `tools/` directory)                                                     |
| `Tool.ts`                   | Tool types / shared tool definitions                                                            |
| `QueryEngine.ts`            | Model / API query pipeline                                                                      |
| `context.ts`                | System and user context                                                                         |
| `cost-tracker.ts`           | Token / cost tracking                                                                           |
| `costHook.ts`               | Cost hook wiring                                                                                |
| `dialogLaunchers.tsx`       | Ink dialogs (resume, settings, teleport, etc.)                                                  |
| `history.ts`                | Input history                                                                                   |
| `ink.ts`                    | Ink root / render helpers                                                                       |
| `interactiveHelpers.tsx`    | Interactive UI helpers                                                                          |
| `projectOnboardingState.ts` | Onboarding state                                                                                |
| `query.ts`                  | Query helpers                                                                                   |
| `replLauncher.tsx`          | REPL launch                                                                                     |
| `setup.ts`                  | Setup flows                                                                                     |
| `tasks.ts`                  | Task utilities / constants                                                                      |
| `Task.ts`                   | Task types                                                                                      |

## Top-level directories

| Directory        | Role                                                                    |
| ---------------- | ----------------------------------------------------------------------- |
| `assistant/`     | Assistant / KAIROS paths (bundle feature-gated)                         |
| `bootstrap/`     | Early boot and global flags (cwd, remote mode, overrides)               |
| `bridge/`        | IDE integration (VS Code, JetBrains, etc.)                              |
| `buddy/`         | Companion / buddy UI                                                    |
| `cli/`           | Non-interactive / print mode, transports, NDJSON, subcommand handlers   |
| `commands/`      | Slash commands and related CLI command modules                          |
| `components/`    | Ink/React UI components                                                 |
| `constants/`     | Shared constants (OAuth, product URLs, etc.)                            |
| `context/`       | Context subsystems (stats, attachments, etc.)                           |
| `coordinator/`   | Multi-agent coordinator (feature-gated)                                 |
| `entrypoints/`   | `init` and related startup entrypoints                                  |
| `hooks/`         | React hooks for the terminal UI                                         |
| `ink/`           | Ink layout, termio, events (terminal renderer layer)                    |
| `keybindings/`   | Keybinding definitions and providers                                    |
| `memdir/`        | Memory directory / persistent memory                                    |
| `migrations/`    | Settings and data migrations                                            |
| `moreright/`     | Internal layout / UI helper                                             |
| `native-ts/`     | Native TypeScript helpers                                               |
| `outputStyles/`  | Output styling                                                          |
| `plugins/`       | Plugin loader and bundled plugins                                       |
| `query/`         | Query pipeline modules                                                  |
| `remote/`        | Remote session / control                                                |
| `schemas/`       | Zod (and related) schemas                                               |
| `screens/`       | Full-screen flows (doctor, REPL shell, resume)                          |
| `server/`        | Server / socket modes                                                   |
| `services/`      | API client, MCP, compaction, LSP, analytics, OAuth, policy, etc.        |
| `skills/`        | Skill loading and bundled skills                                        |
| `state/`         | App state providers and reducers                                        |
| `tasks/`         | Task implementations (local agent, shell, remote, dream, etc.)          |
| `tools/`         | One subdirectory per agent-invokable tool                               |
| `types/`         | Shared TypeScript types (incl. generated)                               |
| `upstreamproxy/` | Upstream proxy configuration                                            |
| `utils/`         | Large catch-all: permissions, settings, swarm, shell, git, telemetry, … |
| `vim/`           | Vim-style editing in the terminal                                       |
| `voice/`         | Voice input                                                             |

## `services/` (second level)

Includes among others: `api/`, `mcp/`, `compact/`, `lsp/`, `oauth/`, `analytics/`, `policyLimits/`, `remoteManagedSettings/`, `plugins/`, `tools/` (service-side tool orchestration), `teamMemorySync/`, `settingsSync/`, `tips/`, `SessionMemory/`, `autoDream/`, `extractMemories/`, plus standalone `.ts` / `.tsx` files for limits, voice, notifier, etc.

## `tools/` (agent tools)

Each major capability is typically its own folder, for example: `BashTool`, `FileReadTool`, `FileWriteTool`, `FileEditTool`, `GlobTool`, `GrepTool`, `WebSearchTool`, `WebFetchTool`, `MCPTool`, `AgentTool`, `TodoWriteTool`, `TaskCreateTool`, `TaskListTool`, `EnterWorktreeTool`, `ExitWorktreeTool`, `LSPTool`, `SkillTool`, `REPLTool`, … plus `shared/` and `testing/`.

## `utils/` (highlights)

Not exhaustive: `swarm/` (teammates, tmux/iTerm backends), `settings/` (incl. `mdm/`), `permissions/`, `shell/`, `telemetry/`, `teleport/`, `deepLink/`, `claudeInChrome/`, `computerUse/`, `messages/`, `sessionStorage.ts`, `sessionStart.ts`, `git.ts`, `config.ts`, `auth.ts`, and hundreds of focused modules.

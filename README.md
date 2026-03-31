# Claude Code — recovered source tree

## What this is

On **31 March 2026**, developers reported that the published npm package for Anthropic’s **Claude Code** CLI shipped a large bundled `cli.js` together with a **source map** (`.map`). Because the map pointed back to original paths and content, the TypeScript/React implementation could be reconstructed from the registry artifact. This repository holds that kind of **recovered `src/` tree** — useful for understanding architecture and integration, not an official release or supported SDK.

## How it leaked

Chaofan Shou (@Fried_rice) discovered the leak and posted it publicly:

> Claude code source code has been leaked via a map file in their npm registry!
>
> — @Fried_rice, 31 March 2026

The source map file in the published npm package contained a reference to the full, unobfuscated TypeScript source, which was downloadable as a zip archive from Anthropic’s R2 storage bucket.

## Overview

Claude Code is Anthropic’s official CLI tool that lets you interact with Claude directly from the terminal to perform software engineering tasks — editing files, running commands, searching codebases, managing git workflows, and more.

This repository contains the leaked `src/` directory.

| Property    | Value                                |
| ----------- | ------------------------------------ |
| Leaked on   | 2026-03-31                           |
| Language    | TypeScript                           |
| Runtime     | Bun                                  |
| Terminal UI | React + Ink (React for CLI)          |
| Scale       | ~1,900 files, 512,000+ lines of code |

Discussion and context: [Hacker News thread on the npm source-map leak](https://news.ycombinator.com/item?id=47584540).

**Legal / ethical note:** The underlying software is Anthropic’s proprietary product. This README describes structure for analysis only; redistribution or use beyond fair use / your local law is your responsibility.

## How the codebase fits together

The CLI is a **Bun-bundled** application whose spine is `src/main.tsx`: a [Commander](https://github.com/tj/commander.js)-based program named `claude` that registers global options, subcommands, and a `preAction` hook where trust, settings, telemetry gates, and prefetch work run before the interactive or print-mode loop.

### Directory structure

The tree below matches this repo’s `src/` layout. For root-level filenames, per-folder notes, and selected subtrees (`services/`, `tools/`, `utils/`), see [docs/directory-structure.md](docs/directory-structure.md).

```text
src/
├── main.tsx
├── QueryEngine.ts
├── Task.ts
├── Tool.ts
├── commands.ts
├── context.ts
├── cost-tracker.ts
├── costHook.ts
├── dialogLaunchers.tsx
├── history.ts
├── ink.ts
├── interactiveHelpers.tsx
├── projectOnboardingState.ts
├── query.ts
├── replLauncher.tsx
├── setup.ts
├── tasks.ts
├── tools.ts
│
├── assistant/
├── bootstrap/
├── bridge/
├── buddy/
├── cli/
├── commands/
├── components/
├── constants/
├── context/
├── coordinator/
├── entrypoints/
├── hooks/
├── ink/
├── keybindings/
├── memdir/
├── migrations/
├── moreright/
├── native-ts/
├── outputStyles/
├── plugins/
├── query/
├── remote/
├── schemas/
├── screens/
├── server/
├── services/
├── skills/
├── state/
├── tasks/
├── tools/
├── types/
├── upstreamproxy/
├── utils/
├── vim/
└── voice/
```

### High-level layers

| Area                                                                                       | Role                                                                                                                                      |
| ------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| **`main.tsx` + `cli/`**                                                                    | Argument parsing, early startup (MDM/keychain prefetch side effects), routing to REPL, `-p`/`--print`, doctor, install, MCP helpers, etc. |
| **`replLauncher.js` / `components/` / `ink/`**                                             | Terminal UI built with **React + Ink**; dialogs, status, and input handling.                                                              |
| **`services/api/`**                                                                        | HTTP client to Anthropic APIs, bootstrap, files, session ingress, usage, retries.                                                         |
| **`services/mcp/`**                                                                        | Model Context Protocol: config parsing, stdio/SDK transports, connection manager, OAuth, enterprise/XAA paths.                            |
| **`services/compact/`**                                                                    | Session compaction (memory/context management hooks the model loop).                                                                      |
| **`services/lsp/`**                                                                        | Optional LSP integration for editor-like features in the terminal workflow.                                                               |
| **`tools/`**                                                                               | Tool implementations the agent invokes (bash, read/write, grep/glob, web, todos, tasks, teammates, MCP tools, etc.).                      |
| **`utils/swarm/`**                                                                         | Multi-agent **teammate** flows: backends for tmux, iTerm, in-process runners, permission sync, reconnection.                              |
| **`coordinator/`**                                                                         | Gated behind bundle feature `COORDINATOR_MODE` (multi-agent coordination).                                                                |
| **`assistant/`**                                                                           | Gated behind bundle feature `KAIROS` (assistant / Agent SDK–oriented mode).                                                               |
| **`plugins/`**, **`skills/`**                                                              | Bundled and user plugins; skill loading and telemetry.                                                                                    |
| **`utils/settings/`**, **`services/policyLimits/`**, **`services/remoteManagedSettings/`** | Layered configuration, enterprise policy, and remote-managed settings.                                                                    |
| **`buddy/`**, **`upstreamproxy/`**, **`voice/`**, **`vim/`**                               | Product features (buddy flows, upstream proxy, voice, vim-style editing).                                                                 |
| **`utils/deepLink/`**, **`utils/claudeInChrome/`**                                         | OS integration: URL schemes, Chrome native messaging, optional MCP entrypoints.                                                           |

Execution paths converge on shared **state** (`state/`, `bootstrap/`), **permissions** (`utils/permissions/`), and **session storage** (`utils/sessionStorage.js`, hooks in `utils/sessionStart.js`). Non-interactive and SDK-style use share much of the same stack as the full-screen REPL, with different front-ends for I/O.

## Repository layout

- **`src/`** — Application source (thousands of modules) as recovered from the bundle map.
- **`docs/`** — Human-readable layout reference ([directory-structure.md](docs/directory-structure.md)).
- There is **no `package.json` in this clone**; building would require the original toolchain (Bun, internal `bun:bundle` features, and private deps). Treat this tree as a **read-only architectural reference**.

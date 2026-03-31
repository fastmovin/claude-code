# Reproducibility and limits

!!! warning "You cannot rebuild the shipping CLI from this tree alone"
This folder is a **source reconstruction**, not a complete open-source project drop.

## What is missing for a full build

1. **No root `package.json`**  
   The published npm package bundles dependencies internally. This repo does not declare versions or scripts to reproduce that bundle.

2. **Bun-specific build features**  
   The entry module uses `bun:bundle` APIs such as `feature('KAIROS')`, `feature('COORDINATOR_MODE')`, `feature('VOICE_MODE')`, etc. Those are compile-time gates in Anthropic’s **internal** bundling pipeline, not something you can flip in a stock TypeScript compile.

3. **Private or unpublished packages**  
   Imports may reference packages or paths that exist only inside Anthropic’s build graph.

4. **Native addons**  
   Some flows (keychain, protocol handlers, optional NAPI modules) assume native binaries shipped beside the real `claude` executable.

## What you _can_ do with this tree

- **Read and trace** control flow: `main.tsx` → REPL or `cli/print.ts` → `query.ts` / `QueryEngine.ts` → `services/api` → tools.
- **Compare behavior** to the public [CLI reference](https://code.claude.com/docs/en/cli-reference) and [how Claude Code works](https://code.claude.com/docs/en/how-claude-code-works).
- **Study** MCP, permissions, compaction, hooks, and IDE bridge code against [official feature docs](https://code.claude.com/docs/en/features-overview).

## “Infrastructure” in the sense of this codebase

There is **no** separate microservice repo here: the CLI is a **single process** (plus child processes for bash, MCP servers, etc.) that talks to **Anthropic’s cloud APIs** and optional **MCP** servers over stdio/WebSocket. Enterprise features (remote-managed settings, policy limits, OAuth) are implemented as **client-side** modules under `src/services/` and `src/utils/settings/`, not as deployable server code in this tree.

## Legal

Rebuilding or redistributing the product for end users is outside the scope of these docs and may infringe Anthropic’s rights. Use this material for **analysis** only unless you have explicit permission.

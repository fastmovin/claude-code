# Query loop and streaming

**Primary paths:** `src/query.ts`, `src/QueryEngine.ts`, `src/utils/processUserInput/`

`query.ts` defines `queryLoop`, the async generator that drives a single conversation turn: streams assistant content, handles tool calls, merges tool results back into context, and coordinates with compaction and permission checks.

`QueryEngine.ts` exposes `submitMessage` for **non-interactive** flows: it prepares `processUserInputContext` with `isNonInteractiveSession: true`, runs skill/plugin caches, and streams SDK-style messages—used from headless and SDK control transports.

Shared input processing (slash commands embedded in prompts, tool permission context updates) lives under `utils/processUserInput/` and related modules.

**See also:** [How Claude Code works](https://code.claude.com/docs/en/how-claude-code-works), [Headless](https://code.claude.com/docs/en/headless).

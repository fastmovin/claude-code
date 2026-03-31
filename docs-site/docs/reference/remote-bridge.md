# Remote sessions, teleport, IDE bridge, Chrome

**Primary paths:** `src/remote/`, `src/utils/teleport/`, `src/utils/deepLink/`, `src/bridge/`, `src/utils/claudeInChrome/`, `src/hooks/useDiffInIDE.ts`

**Remote / teleport:** `teleport/` handles session bundles, environment selection, and API calls to resume or hand off sessions—aligned with [Remote control](https://code.claude.com/docs/en/remote-control) and web/desktop flows.

**Deep links:** `deepLink/protocolHandler.ts` parses `claude-cli://` URIs and launches the binary in a terminal with the right cwd/repo context.

**IDE bridge:** `bridge/` communicates with VS Code and JetBrains extensions (diffs, context). Hooks like `useDiffInIDE.ts` open IDE-native diff UIs when available.

**Chrome:** `claudeInChrome/` implements native messaging and MCP servers for the [Chrome](https://code.claude.com/docs/en/chrome) beta workflow.

**See also:** [VS Code](https://code.claude.com/docs/en/vs-code), [JetBrains](https://code.claude.com/docs/en/jetbrains), [Desktop](https://code.claude.com/docs/en/desktop).

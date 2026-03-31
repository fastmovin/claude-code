# LSP integration

**Primary paths:** `src/services/lsp/`, `src/tools/LSPTool/`

`LSPServerManager.ts`, `LSPClient.ts`, and related modules manage language server processes and diagnostics. The agent invokes LSP capabilities through `LSPTool`, which bridges model tool calls to LSP requests.

Passive feedback and config live alongside the manager (`passiveFeedback.ts`, `config.ts`).

**See also:** [Tools reference](https://code.claude.com/docs/en/tools-reference) (LSP tool), [Architecture](../architecture.md).

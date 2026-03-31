# Tools registry and execution

**Primary paths:** `src/tools.ts`, `src/Tool.ts`, `src/tools/*`, `src/services/tools/`

`tools.ts` exposes `getTools(permissionContext)` and helpers to merge **built-in** tools with **MCP-derived** tools. Built-ins live as one package per directory under `tools/` (e.g. `BashTool`, `FileReadTool`, `GlobTool`, `WebSearchTool`, `AgentTool`).

`services/tools/` contains orchestration: `toolExecution.ts`, `StreamingToolExecutor.ts`, `toolHooks.ts`, hooking tool lifecycle into analytics and permission systems.

Tool schemas and permission requirements align with the public [Tools reference](https://code.claude.com/docs/en/tools-reference); this tree is the implementation of those capabilities.

**See also:** [Tools reference](https://code.claude.com/docs/en/tools-reference), [Appendix: tool packages](../appendix/tool-packages.md).

# Print mode, stream-json, and SDK control

**Primary paths:** `src/cli/print.ts`, `src/cli/structuredIO.ts`, `src/cli/transports/*`, `src/QueryEngine.ts`

`print.ts` implements non-interactive execution: structured stdin lines, streaming stdout (including partial messages), tool permission prompts bridged over the protocol, and verbose/debug modes.

`structuredIO.ts` parses and validates incoming events; transports (`WebSocketTransport`, `SSETransport`, `HybridTransport`, etc.) support remote SDK and CCR-style integrations.

This corresponds to [Headless](https://code.claude.com/docs/en/headless) and Agent SDK usage documented on the Anthropic platform.

**See also:** [Workflows](../workflows.md), [Query loop](query-engine.md).

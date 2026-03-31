# Compaction and session memory

**Primary paths:** `src/services/compact/`, `src/services/SessionMemory/`, `src/utils/tokenBudget.ts`

Compaction reduces transcript size when approaching context limits: `compact.ts`, `autoCompact.ts`, `microCompact.ts`, `sessionMemoryCompact.ts`, grouping, prompts, and post-compact cleanup. Time-based and API microcompact paths support different strategies.

Session memory modules add long-lived summaries and structured memory aligned with product behavior described under [memory](https://code.claude.com/docs/en/memory) and [context window](https://code.claude.com/docs/en/context-window).

**See also:** [Context window](https://code.claude.com/docs/en/context-window), [Costs](https://code.claude.com/docs/en/costs), [Checkpointing](https://code.claude.com/docs/en/checkpointing).

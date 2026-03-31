# CLI entry and parsing

**Primary paths:** `src/main.tsx`, `src/cli/*`, `src/commands.ts`

`main.tsx` registers the `claude` Commander program: global options (model, permissions, worktree, teammate flags, MCP, teleport, etc.), subcommands (MCP, plugins, agents, auth utilities), and a `preAction` hook that runs trust checks, settings load, telemetry initialization, prefetch (MCP URLs, referral, fast mode), and policy gates before any handler executes.

Side effects at **module top** intentionally run before other imports: startup profiler, MDM subprocess reads (`utils/settings/mdm/rawRead.ts`), and macOS keychain prefetch to overlap I/O with the rest of module evaluation.

Feature-gated dynamic `require()` loads `coordinator/coordinatorMode.js` when `COORDINATOR_MODE` is true in the Bun bundle, and `assistant/` when `KAIROS` is true.

**See also:** [CLI reference](https://code.claude.com/docs/en/cli-reference), [Architecture](../architecture.md).

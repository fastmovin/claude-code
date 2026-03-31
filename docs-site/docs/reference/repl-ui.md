# REPL and terminal UI

**Primary paths:** `src/screens/REPL.tsx`, `src/components/`, `src/ink/`, `src/replLauncher.tsx`, `src/interactiveHelpers.tsx`

The interactive session is a **React + Ink** application. `replLauncher.tsx` mounts the Ink root and wraps the tree with providers for app state, keybindings, MCP connections, and plugin context.

`REPL.tsx` is large and central: it manages the transcript, loading state, `onQuery` invocations, tool use UI, permission prompts, teammate inbox polling, mailbox bridge, voice integration when `VOICE_MODE` is compiled in, scheduled cron integration, and queue processing between turns.

`ink/` contains layout primitives, terminal I/O helpers, and event wiring specific to the TUI. `components/` holds feature UI (modals, tool output, plan mode, etc.).

**See also:** [Interactive mode](https://code.claude.com/docs/en/interactive-mode), [Fullscreen](https://code.claude.com/docs/en/fullscreen), [Workflows](../workflows.md).

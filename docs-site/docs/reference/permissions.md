# Permissions and modes

**Primary paths:** `src/utils/permissions/`, `src/utils/permissions/permissionSetup.ts`, `src/utils/permissions/PermissionMode.ts`

Permission modes (manual, auto with classifiers, plan-only, etc.) are parsed from CLI flags and settings, then stored in `toolPermissionContext` on app state. Tool execution consults this context before running bash, file writes, MCP calls, etc.

`permissionSetup.ts` and related modules implement gates for auto mode, dangerous permission stripping, and advisor integration.

**See also:** [Permissions](https://code.claude.com/docs/en/permissions), [Permission modes](https://code.claude.com/docs/en/permission-modes), [Sandboxing](https://code.claude.com/docs/en/sandboxing).

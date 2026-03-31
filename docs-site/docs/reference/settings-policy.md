# Settings, policy, and remote management

**Primary paths:** `src/utils/settings/`, `src/services/policyLimits/`, `src/services/remoteManagedSettings/`, `src/schemas/`, `src/migrations/`

`settings.ts` and `settingsCache.ts` load merged global and project settings. `mdm/` contains macOS managed-device reads. `validation.ts` enforces schema and tool allowlists.

`policyLimits/` loads enterprise caps (models, spend, features). `remoteManagedSettings/` syncs server-delivered configuration described in [Server-managed settings](https://code.claude.com/docs/en/server-managed-settings).

`migrations/` upgrades on-disk settings between versions.

**See also:** [Settings](https://code.claude.com/docs/en/settings), [Environment variables](https://code.claude.com/docs/en/env-vars).

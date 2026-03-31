# Official Claude Code docs ↔ `src/` map

This table links each page listed in the [official docs index (`llms.txt`)](https://code.claude.com/docs/llms.txt) to **primary** paths under `src/`. Many features span multiple folders; only entry points and main implementations are shown. Rows marked _user guide_ have no single code anchor.

!!! tip "Canonical user documentation"
For behavior, flags, and configuration, always prefer **[code.claude.com/docs](https://code.claude.com/docs/en/overview)**. This map is for **code navigation** in the recovered tree.

## Product, platforms, and onboarding

| Official doc                                                                    | Primary `src/` paths                        | Notes                                       |
| ------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| [Overview](https://code.claude.com/docs/en/overview.md)                         | `main.tsx`, `screens/REPL.tsx`              | Product surfaces; CLI is one implementation |
| [Quickstart](https://code.claude.com/docs/en/quickstart.md)                     | _user guide_                                |                                             |
| [Platforms and integrations](https://code.claude.com/docs/en/platforms.md)      | `bridge/`, `cli/`, `remote/`                |                                             |
| [Common workflows](https://code.claude.com/docs/en/common-workflows.md)         | _user guide_                                |                                             |
| [Best practices](https://code.claude.com/docs/en/best-practices.md)             | _user guide_                                |                                             |
| [Changelog](https://code.claude.com/docs/en/changelog.md)                       | _release notes_                             |                                             |
| [Troubleshooting](https://code.claude.com/docs/en/troubleshooting.md)           | _user guide_                                |                                             |
| [Legal and compliance](https://code.claude.com/docs/en/legal-and-compliance.md) | _policy_                                    |                                             |
| [Data usage](https://code.claude.com/docs/en/data-usage.md)                     | _policy_                                    |                                             |
| [Security](https://code.claude.com/docs/en/security.md)                         | `utils/permissions/`, `utils/shell/`        | Safeguards; not exhaustive                  |
| [Zero data retention](https://code.claude.com/docs/en/zero-data-retention.md)   | `services/policyLimits/`, `utils/settings/` | Enterprise policy hooks                     |

## CLI, terminal, and interaction

| Official doc                                                            | Primary `src/` paths                              | Notes                                                                       |
| ----------------------------------------------------------------------- | ------------------------------------------------- | --------------------------------------------------------------------------- |
| [CLI reference](https://code.claude.com/docs/en/cli-reference.md)       | `main.tsx`, `commands/`                           | Flags and subcommands                                                       |
| [Interactive mode](https://code.claude.com/docs/en/interactive-mode.md) | `screens/REPL.tsx`, `keybindings/`, `components/` | Shortcuts, input modes (`hooks/` here is React hooks, not user shell hooks) |
| [Terminal config](https://code.claude.com/docs/en/terminal-config.md)   | `utils/terminal.ts`, `ink/`                       |                                                                             |
| [Keybindings](https://code.claude.com/docs/en/keybindings.md)           | `keybindings/`                                    |                                                                             |
| [Status line](https://code.claude.com/docs/en/statusline.md)            | `utils/status.tsx`, `components/`                 |                                                                             |
| [Fullscreen rendering](https://code.claude.com/docs/en/fullscreen.md)   | `ink/`, `components/`                             |                                                                             |
| [Voice dictation](https://code.claude.com/docs/en/voice-dictation.md)   | `voice/`, `screens/REPL.tsx`                      | Gated by `VOICE_MODE` in bundle                                             |
| [Built-in commands](https://code.claude.com/docs/en/commands.md)        | `commands/`                                       | Slash commands                                                              |
| [Output styles](https://code.claude.com/docs/en/output-styles.md)       | `outputStyles/`                                   |                                                                             |

## Agent loop, tools, and context

| Official doc                                                                      | Primary `src/` paths                                       | Notes                     |
| --------------------------------------------------------------------------------- | ---------------------------------------------------------- | ------------------------- |
| [How Claude Code works](https://code.claude.com/docs/en/how-claude-code-works.md) | `query.ts`, `tools.ts`, `services/tools/`                  | Agentic loop              |
| [Headless / programmatic](https://code.claude.com/docs/en/headless.md)            | `cli/print.ts`, `QueryEngine.ts`                           | Stream-json / SDK control |
| [Tools reference](https://code.claude.com/docs/en/tools-reference.md)             | `tools/*`, `Tool.ts`, `services/lsp/`                      | Includes LSP tool         |
| [Context window](https://code.claude.com/docs/en/context-window.md)               | `services/compact/`, `utils/tokenBudget.ts`                |                           |
| [Checkpointing](https://code.claude.com/docs/en/checkpointing.md)                 | `utils/sessionStorage.ts`, `utils/conversationRecovery.ts` |                           |
| [Costs](https://code.claude.com/docs/en/costs.md)                                 | `cost-tracker.ts`, `services/api/usage.ts`                 | Token usage and limits    |
| [Sandboxing](https://code.claude.com/docs/en/sandboxing.md)                       | `utils/shell/`, `tools/BashTool/`                          | Bash isolation            |
| [Computer use](https://code.claude.com/docs/en/computer-use.md)                   | `utils/computerUse/`                                       | CLI computer-use MCP      |
| [Fast mode](https://code.claude.com/docs/en/fast-mode.md)                         | `utils/fastMode.ts`                                        |                           |

## MCP, channels, and extensions

| Official doc                                                                  | Primary `src/` paths                           | Notes                         |
| ----------------------------------------------------------------------------- | ---------------------------------------------- | ----------------------------- |
| [MCP](https://code.claude.com/docs/en/mcp.md)                                 | `services/mcp/`, `tools/MCPTool/`              |                               |
| [Channels](https://code.claude.com/docs/en/channels.md)                       | `services/mcp/channel*.ts`                     | Inbound push                  |
| [Channels reference](https://code.claude.com/docs/en/channels-reference.md)   | `services/mcp/`                                | Contract / capabilities       |
| [Hooks guide](https://code.claude.com/docs/en/hooks-guide.md)                 | `utils/sessionStart.ts`, hook runners          |                               |
| [Hooks reference](https://code.claude.com/docs/en/hooks.md)                   | `utils/sessionStart.ts`, `schemas/`            | JSON schemas                  |
| [Plugins](https://code.claude.com/docs/en/plugins.md)                         | `plugins/`, `utils/plugins/`                   |                               |
| [Plugins reference](https://code.claude.com/docs/en/plugins-reference.md)     | `plugins/`, `services/plugins/`                |                               |
| [Discover plugins](https://code.claude.com/docs/en/discover-plugins.md)       | `services/plugins/pluginCliCommands.ts`        |                               |
| [Plugin marketplaces](https://code.claude.com/docs/en/plugin-marketplaces.md) | `utils/plugins/`                               |                               |
| [Skills](https://code.claude.com/docs/en/skills.md)                           | `skills/`, `utils/skills/`, `tools/SkillTool/` |                               |
| [Features overview](https://code.claude.com/docs/en/features-overview.md)     | _cross-cutting_                                | CLAUDE.md, skills, MCP, hooks |

## Memory, project config, and `.claude`

| Official doc                                                                     | Primary `src/` paths             | Notes                 |
| -------------------------------------------------------------------------------- | -------------------------------- | --------------------- |
| [Memory / CLAUDE.md](https://code.claude.com/docs/en/memory.md)                  | `utils/claudemd.ts`, `memdir/`   |                       |
| [Explore .claude directory](https://code.claude.com/docs/en/claude-directory.md) | `utils/settings/`, `migrations/` | Settings, hooks paths |

## Permissions and models

| Official doc                                                            | Primary `src/` paths                   | Notes                |
| ----------------------------------------------------------------------- | -------------------------------------- | -------------------- |
| [Permissions](https://code.claude.com/docs/en/permissions.md)           | `utils/permissions/`                   |                      |
| [Permission modes](https://code.claude.com/docs/en/permission-modes.md) | `utils/permissions/permissionSetup.ts` | Auto / plan / etc.   |
| [Model configuration](https://code.claude.com/docs/en/model-config.md)  | `utils/model/`                         | Aliases, deprecation |

## Multi-agent and scheduling

| Official doc                                                                  | Primary `src/` paths                 | Notes                           |
| ----------------------------------------------------------------------------- | ------------------------------------ | ------------------------------- |
| [Agent teams](https://code.claude.com/docs/en/agent-teams.md)                 | `utils/swarm/`, `screens/REPL.tsx`   |                                 |
| [Subagents](https://code.claude.com/docs/en/sub-agents.md)                    | `tools/AgentTool/`                   |                                 |
| [Scheduled tasks](https://code.claude.com/docs/en/scheduled-tasks.md)         | `utils/cron*.ts`, `screens/REPL.tsx` | `/loop`, cron tools             |
| [Web scheduled tasks](https://code.claude.com/docs/en/web-scheduled-tasks.md) | `services/api/`, `remote/`           | Cloud scheduling (client hooks) |

## IDEs, Chrome, remote, desktop

| Official doc                                                                        | Primary `src/` paths                                           | Notes                   |
| ----------------------------------------------------------------------------------- | -------------------------------------------------------------- | ----------------------- |
| [VS Code](https://code.claude.com/docs/en/vs-code.md)                               | `bridge/`, `hooks/useDiffInIDE.ts`                             |                         |
| [JetBrains](https://code.claude.com/docs/en/jetbrains.md)                           | `bridge/`                                                      |                         |
| [Chrome](https://code.claude.com/docs/en/chrome.md)                                 | `utils/claudeInChrome/`                                        | Extension / native host |
| [Remote control](https://code.claude.com/docs/en/remote-control.md)                 | `remote/`, `utils/teleport/`, `services/api/sessionIngress.ts` |                         |
| [Claude Code on the web](https://code.claude.com/docs/en/claude-code-on-the-web.md) | `services/api/`, `bootstrap/`                                  | Cloud session client    |
| [Desktop](https://code.claude.com/docs/en/desktop.md)                               | `utils/deepLink/`, `dialogLaunchers.tsx`                       | Handoff / deep links    |
| [Desktop quickstart](https://code.claude.com/docs/en/desktop-quickstart.md)         | _user guide_                                                   |                         |

## Authentication and cloud providers

| Official doc                                                                   | Primary `src/` paths                      | Notes             |
| ------------------------------------------------------------------------------ | ----------------------------------------- | ----------------- |
| [Authentication](https://code.claude.com/docs/en/authentication.md)            | `utils/auth.ts`, `services/oauth/`        |                   |
| [Amazon Bedrock](https://code.claude.com/docs/en/amazon-bedrock.md)            | `utils/aws.ts`, `utils/auth.ts`           |                   |
| [Google Vertex AI](https://code.claude.com/docs/en/google-vertex-ai.md)        | `utils/auth.ts`, `services/api/`          |                   |
| [Microsoft Foundry](https://code.claude.com/docs/en/microsoft-foundry.md)      | `services/api/`, `utils/auth.ts`          |                   |
| [LLM gateway](https://code.claude.com/docs/en/llm-gateway.md)                  | `upstreamproxy/`, `services/api/`         |                   |
| [Enterprise network config](https://code.claude.com/docs/en/network-config.md) | `utils/caCerts.ts`, `utils/managedEnv.ts` | Proxy / mTLS / CA |

## Settings, policy, and enterprise

| Official doc                                                                                         | Primary `src/` paths                                                 | Notes   |
| ---------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- | ------- |
| [Settings](https://code.claude.com/docs/en/settings.md)                                              | `utils/settings/`                                                    |         |
| [Environment variables](https://code.claude.com/docs/en/env-vars.md)                                 | _grep `process.env`_ — [appendix](appendix/environment-variables.md) |         |
| [Server-managed settings](https://code.claude.com/docs/en/server-managed-settings.md)                | `services/remoteManagedSettings/`                                    |         |
| [Third-party integrations / enterprise](https://code.claude.com/docs/en/third-party-integrations.md) | `bridge/`, `services/mcp/`, `utils/settings/mdm/`                    |         |
| [Development containers](https://code.claude.com/docs/en/devcontainer.md)                            | _user guide_                                                         |         |
| [GitHub Enterprise Server](https://code.claude.com/docs/en/github-enterprise-server.md)              | `utils/github/`                                                      | Partial |

## CI/CD, review, and chat integrations

| Official doc                                                        | Primary `src/` paths                           | Notes                  |
| ------------------------------------------------------------------- | ---------------------------------------------- | ---------------------- |
| [GitHub Actions](https://code.claude.com/docs/en/github-actions.md) | _minimal in CLI_                               | CI uses product binary |
| [GitLab CI/CD](https://code.claude.com/docs/en/gitlab-ci-cd.md)     | _minimal in CLI_                               |                        |
| [Code review](https://code.claude.com/docs/en/code-review.md)       | _service-side / GitHub app_                    |                        |
| [Slack](https://code.claude.com/docs/en/slack.md)                   | `utils/suggestions/slackChannelSuggestions.ts` | Integrations           |

## Analytics, monitoring, LSP

| Official doc                                                                      | Primary `src/` paths                      | Notes |
| --------------------------------------------------------------------------------- | ----------------------------------------- | ----- |
| [Analytics](https://code.claude.com/docs/en/analytics.md)                         | `services/analytics/`                     |       |
| [Monitoring / OpenTelemetry](https://code.claude.com/docs/en/monitoring-usage.md) | `utils/telemetry/`, `services/analytics/` |       |

## Advanced setup

| Official doc                                                                         | Primary `src/` paths | Notes                                              |
| ------------------------------------------------------------------------------------ | -------------------- | -------------------------------------------------- |
| [Advanced setup](https://code.claude.com/docs/en/setup.md)                           | _user guide_         | Install / uninstall product                        |
| [Vim mode](https://code.claude.com/docs/en/interactive-mode.md)                      | `vim/`               | See interactive mode; vim implementation in `vim/` |
| [Coordinator / internal multi-agent](https://code.claude.com/docs/en/agent-teams.md) | `coordinator/`       | Bundle feature `COORDINATOR_MODE`                  |
| [Assistant mode / Agent SDK daemon](https://code.claude.com/docs/en/headless.md)     | `assistant/`         | Bundle feature `KAIROS`                            |

</think>

<｜tool▁calls▁begin｜><｜tool▁call▁begin｜>
Read

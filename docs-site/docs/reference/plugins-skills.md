# Plugins and skills

**Primary paths:** `src/plugins/`, `src/skills/`, `src/utils/plugins/`, `src/utils/skills/`, `src/tools/SkillTool/`, `src/services/plugins/`

Bundled plugins ship under `plugins/bundled/`; `PluginInstallationManager` and CLI commands under `services/plugins/` support install/update scopes. Skills load from project and user directories; `skillChangeDetector` watches for changes.

`SkillTool` exposes skill invocation to the model. Hooks and commands defined by plugins align with [Plugins](https://code.claude.com/docs/en/plugins) and [Skills](https://code.claude.com/docs/en/skills).

**See also:** [Plugins reference](https://code.claude.com/docs/en/plugins-reference), [Discover plugins](https://code.claude.com/docs/en/discover-plugins).

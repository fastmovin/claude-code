# Tool packages under `src/tools/`

Each row is a package directory implementing or supporting an agent tool. Names align with the public [Tools reference](https://code.claude.com/docs/en/tools-reference) where applicable.

| Package                | Path                              |
| ---------------------- | --------------------------------- |
| `AgentTool`            | `src/tools/AgentTool/`            |
| `AskUserQuestionTool`  | `src/tools/AskUserQuestionTool/`  |
| `BashTool`             | `src/tools/BashTool/`             |
| `BriefTool`            | `src/tools/BriefTool/`            |
| `ConfigTool`           | `src/tools/ConfigTool/`           |
| `EnterPlanModeTool`    | `src/tools/EnterPlanModeTool/`    |
| `EnterWorktreeTool`    | `src/tools/EnterWorktreeTool/`    |
| `ExitPlanModeTool`     | `src/tools/ExitPlanModeTool/`     |
| `ExitWorktreeTool`     | `src/tools/ExitWorktreeTool/`     |
| `FileEditTool`         | `src/tools/FileEditTool/`         |
| `FileReadTool`         | `src/tools/FileReadTool/`         |
| `FileWriteTool`        | `src/tools/FileWriteTool/`        |
| `GlobTool`             | `src/tools/GlobTool/`             |
| `GrepTool`             | `src/tools/GrepTool/`             |
| `LSPTool`              | `src/tools/LSPTool/`              |
| `ListMcpResourcesTool` | `src/tools/ListMcpResourcesTool/` |
| `MCPTool`              | `src/tools/MCPTool/`              |
| `McpAuthTool`          | `src/tools/McpAuthTool/`          |
| `NotebookEditTool`     | `src/tools/NotebookEditTool/`     |
| `PowerShellTool`       | `src/tools/PowerShellTool/`       |
| `REPLTool`             | `src/tools/REPLTool/`             |
| `ReadMcpResourceTool`  | `src/tools/ReadMcpResourceTool/`  |
| `RemoteTriggerTool`    | `src/tools/RemoteTriggerTool/`    |
| `ScheduleCronTool`     | `src/tools/ScheduleCronTool/`     |
| `SendMessageTool`      | `src/tools/SendMessageTool/`      |
| `SkillTool`            | `src/tools/SkillTool/`            |
| `SleepTool`            | `src/tools/SleepTool/`            |
| `SyntheticOutputTool`  | `src/tools/SyntheticOutputTool/`  |
| `TaskCreateTool`       | `src/tools/TaskCreateTool/`       |
| `TaskGetTool`          | `src/tools/TaskGetTool/`          |
| `TaskListTool`         | `src/tools/TaskListTool/`         |
| `TaskOutputTool`       | `src/tools/TaskOutputTool/`       |
| `TaskStopTool`         | `src/tools/TaskStopTool/`         |
| `TaskUpdateTool`       | `src/tools/TaskUpdateTool/`       |
| `TeamCreateTool`       | `src/tools/TeamCreateTool/`       |
| `TeamDeleteTool`       | `src/tools/TeamDeleteTool/`       |
| `TodoWriteTool`        | `src/tools/TodoWriteTool/`        |
| `ToolSearchTool`       | `src/tools/ToolSearchTool/`       |
| `WebFetchTool`         | `src/tools/WebFetchTool/`         |
| `WebSearchTool`        | `src/tools/WebSearchTool/`        |
| `shared`               | `src/tools/shared/`               |
| `testing`              | `src/tools/testing/`              |

To regenerate this table, run `scripts/gen-appendices.sh` from the repository root.

# MCP (Model Context Protocol)

**Primary paths:** `src/services/mcp/`, `src/tools/MCPTool/`, `src/tools/McpAuthTool/`, `src/services/mcp/MCPConnectionManager.tsx`

The MCP subsystem parses config (files, env expansion, enterprise allowlists), establishes **stdio** and **in-process** transports, handles OAuth for MCP servers, normalizes server metadata, and exposes tools and resources to the model.

Channel-related files (`channelAllowlist`, `channelNotification`, `channelPermissions`) implement **push** notifications into a session, matching the [Channels](https://code.claude.com/docs/en/channels) documentation.

The React `MCPConnectionManager` wraps interactive sessions so the REPL can connect/disconnect servers and reflect status in the UI.

**See also:** [MCP](https://code.claude.com/docs/en/mcp), [Channels reference](https://code.claude.com/docs/en/channels-reference).

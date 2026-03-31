# Claude Code — recovered source internals

!!! warning "Proprietary software / leaked reconstruction"
This repository contains **reconstructed TypeScript source** from a published npm bundle source map (March 2026). The software is **Anthropic’s proprietary product**. These docs are for **education and architecture study** only. Building or redistributing a competing product may violate law or Anthropic’s terms. This site is **not** official documentation and **not** Anthropic support.

This documentation maps the **`src/`** tree of the Claude Code CLI to **how the product behaves**, with cross-links to **[official Claude Code documentation](https://code.claude.com/docs/en/overview)**.

## What Claude Code is (official product)

From the [product overview](https://code.claude.com/docs/en/overview):

> Claude Code is an agentic coding tool that reads your codebase, edits files, runs commands, and integrates with your development tools. Available in your terminal, IDE, desktop app, and browser.

The recovered codebase implements primarily the **terminal CLI** surface, plus shared logic for tools, MCP, permissions, compaction, IDE bridge hooks, and related services.

## How to use this site

| Section                                     | Purpose                                                                                |
| ------------------------------------------- | -------------------------------------------------------------------------------------- |
| [Installation](installation.md)             | Build **this documentation** locally; install the **real** Claude Code from Anthropic. |
| [Reproducibility](reproducibility.md)       | Why you **cannot** rebuild the shipping npm package from this tree alone.              |
| [Architecture](architecture.md)             | High-level components and data flow.                                                   |
| [Workflows](workflows.md)                   | Interactive REPL, print/headless, swarm, compaction paths.                             |
| [Official docs map](official-docs-map.md)   | Every indexed doc page ↔ `src/` entry points.                                          |
| [Reference](reference/cli-entry.md)         | Deeper dives per subsystem.                                                            |
| [Appendix](appendix/directory-structure.md) | Directory layout, tool packages, environment variables.                                |

## Repository

Source code lives under `src/` in the GitHub repository. The published MkDocs site is built from `docs-site/` via GitHub Actions. After enabling Pages on the `gh-pages` branch, the URL is typically `https://<user>.github.io/<repo>/` (see the root `README.md`).

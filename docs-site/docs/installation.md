# Installation

!!! warning "Two different things"
**A)** Building this **documentation site** (MkDocs) — instructions below.  
 **B)** Installing **Claude Code** the product — use Anthropic’s official installers only.

## Install Claude Code (official product)

Follow the [Claude Code overview](https://code.claude.com/docs/en/overview): native install script, Homebrew, WinGet, VS Code extension, JetBrains plugin, desktop app, or web. This recovered repository **does not** ship a supported way to compile or install the product from source.

## Build this documentation site (local)

Requires Python 3.10+.

```bash
cd docs-site
python3 -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
mkdocs serve
```

Open `http://127.0.0.1:8000` to preview.

## Publish (GitHub Pages)

On push to `main`, the workflow `.github/workflows/pages.yml` builds the site and pushes to the `gh-pages` branch (also runs when `README.md` or the workflow file changes).

1. In the GitHub repo: **Settings → Pages → Build and deployment → Branch `gh-pages` / `/ (root)`**.
2. Set `site_url` in `mkdocs.yml` to your real Pages URL (this fork uses `https://mehmoodosman.github.io/claude-code-source-code/`) and keep `repo_url` aligned with your GitHub owner so “edit” links and sitemaps stay correct.

The deploy step sets **`enable_jekyll: false`** so GitHub Pages serves static files correctly (adds `.nojekyll`).

## Advanced setup (official)

For system requirements, updates, and uninstallation of the **product**, see [Advanced setup](https://code.claude.com/docs/en/setup) in the official docs.

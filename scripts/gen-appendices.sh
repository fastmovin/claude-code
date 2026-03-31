#!/usr/bin/env bash
# Regenerate appendix artifacts for local analysis (optional).
# Run from repository root: bash scripts/gen-appendices.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="$ROOT/docs-site/docs/appendix"
mkdir -p "$OUT_DIR"

echo "# Generated: unique process.env references (do not edit by hand)" > "$OUT_DIR/_generated-env-vars.txt"
echo "" >> "$OUT_DIR/_generated-env-vars.txt"
if command -v rg >/dev/null 2>&1; then
  rg -o 'process\.env\.[A-Za-z0-9_]+' "$ROOT/src" --glob '*.ts' --glob '*.tsx' 2>/dev/null | sort -u >> "$OUT_DIR/_generated-env-vars.txt" || true
else
  echo "ripgrep (rg) not found; skipped env extraction." >> "$OUT_DIR/_generated-env-vars.txt"
fi

echo "Wrote $OUT_DIR/_generated-env-vars.txt (add to .gitignore if you do not want to commit)."

# Optional: print tool table rows for pasting into tool-packages.md
echo ""
echo "--- Tool package rows (markdown) ---"
for d in "$ROOT/src/tools"/*/; do
  [[ -d "$d" ]] || continue
  b=$(basename "$d")
  echo "| \`$b\` | \`src/tools/$b/\` |"
done | sort

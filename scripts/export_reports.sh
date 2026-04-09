#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIST="$ROOT/dist"
CSS="$ROOT/reports/assets/report.css"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

mkdir -p "$DIST"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc not found" >&2
  exit 1
fi

if [[ ! -x "$CHROME" ]]; then
  echo "Google Chrome not found at $CHROME" >&2
  exit 1
fi

render_one() {
  local src="$1"
  local base="$2"
  local title="$3"
  local html="$DIST/$base.html"
  local pdf="$DIST/$base.pdf"

  pandoc \
    --from=gfm \
    --to=html5 \
    --standalone \
    --toc \
    --self-contained \
    --resource-path="$ROOT/reports:$ROOT" \
    --css="$CSS" \
    --metadata=title:"$title" \
    -o "$html" \
    "$src"

  "$CHROME" \
    --headless=new \
    --disable-gpu \
    --run-all-compositor-stages-before-draw \
    --virtual-time-budget=12000 \
    --no-pdf-header-footer \
    --print-to-pdf-no-header \
    "--print-to-pdf=$pdf" \
    "file://$html" >/dev/null 2>&1
}

render_one "$ROOT/README.md" "index" "Claude Mythos Preview Analysis Pack"
render_one "$ROOT/reports/claude-mythos-executive-summary.bilingual.md" "claude-mythos-executive-summary.bilingual" "Claude Mythos Preview Executive Summary"
render_one "$ROOT/reports/claude-mythos-preview-analysis.zh-CN.md" "claude-mythos-preview-analysis.zh-CN" "Claude Mythos Preview Deep Report (Chinese)"
render_one "$ROOT/reports/claude-mythos-preview-analysis.en.md" "claude-mythos-preview-analysis.en" "Claude Mythos Preview Deep Report (English)"
render_one "$ROOT/reports/claude-mythos-whitepaper.zh-CN.md" "claude-mythos-whitepaper.zh-CN" "Claude Mythos Preview Whitepaper (Chinese)"
render_one "$ROOT/reports/claude-mythos-whitepaper.en.md" "claude-mythos-whitepaper.en" "Claude Mythos Preview Whitepaper (English)"
render_one "$ROOT/reports/claude-mythos-social-kit.zh-CN.md" "claude-mythos-social-kit.zh-CN" "Claude Mythos Social Distribution Kit"

echo "Export complete:"
printf '  - %s\n' "$DIST"/*.html "$DIST"/*.pdf

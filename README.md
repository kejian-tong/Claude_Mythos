# Claude Mythos Preview Analysis Pack

A research-oriented repository for studying Anthropic's `Claude Mythos Preview System Card` dated `2026-04-07`. The project includes bilingual analysis reports, whitepaper-style editions in Chinese and English, extracted figure pages, and rendered PDF deliverables.

## Quick Access

| Edition | Markdown | PDF | Primary use |
| --- | --- | --- | --- |
| Executive summary | [bilingual](./reports/claude-mythos-executive-summary.bilingual.md) | [pdf](./dist/claude-mythos-executive-summary.bilingual.pdf) | Fast orientation |
| Deep report | [zh-CN](./reports/claude-mythos-preview-analysis.zh-CN.md) | [pdf](./dist/claude-mythos-preview-analysis.zh-CN.pdf) | Full explanatory reading |
| Deep report | [English](./reports/claude-mythos-preview-analysis.en.md) | [pdf](./dist/claude-mythos-preview-analysis.en.pdf) | External sharing / English readership |
| Whitepaper edition | [zh-CN](./reports/claude-mythos-whitepaper.zh-CN.md) | [pdf](./dist/claude-mythos-whitepaper.zh-CN.pdf) | Research, review, and policy discussion |
| Whitepaper edition | [English](./reports/claude-mythos-whitepaper.en.md) | [pdf](./dist/claude-mythos-whitepaper.en.pdf) | Research, review, and policy discussion |

## Repository Scope

- A section-by-section reading of the full system card
- A clear split between `evidence`, `interpretation`, and `speculation`
- Plain-language explanations for frontier-AI safety terminology
- Many examples and analogies for difficult concepts
- Whitepaper-style syntheses for research and internal briefings
- Selected extracted figure pages in [`reports/assets`](./reports/assets/)
- Rendered PDF editions in [`dist`](./dist/)

## Document Provenance

- Primary analyzed document: `Claude Mythos Preview System Card`
- Document date shown inside the PDF: `2026-04-07`
- Public circulation reference: [Ben Cherny on X](https://x.com/bcherny/status/2041605852382351666)
- Archival note: the original PDF and extracted raw text were used locally for analysis and are intentionally not committed to this repository

## Regenerating Rendered Outputs

Rendered PDF outputs are generated with `pandoc` and headless Chrome.

```bash
./scripts/export_reports.sh
```

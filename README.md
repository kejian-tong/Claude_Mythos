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
- Rendered PDF editions in [`dist`](./dist/)

## Suggested Reading Path

1. Start with the [executive summary](./reports/claude-mythos-executive-summary.bilingual.md).
2. Continue to the [Chinese deep report](./reports/claude-mythos-preview-analysis.zh-CN.md).
3. Use the [Chinese whitepaper edition](./reports/claude-mythos-whitepaper.zh-CN.md) for a more academic synthesis.
4. Share the [English deep report](./reports/claude-mythos-preview-analysis.en.md) when an English-facing version is needed.
5. Use the [English whitepaper edition](./reports/claude-mythos-whitepaper.en.md) for English-language review and policy discussion.

## Visual Extracts

Selected figure pages extracted from the source PDF are stored in [`reports/assets`](./reports/assets/):

| Figure page | Asset | Notes |
| --- | --- | --- |
| p.42 | [eci_capability_trajectory-042.png](./reports/assets/eci_capability_trajectory-042.png) | ECI capability trajectory discussion |
| p.50 | [firefox_exploit_results-050.png](./reports/assets/firefox_exploit_results-050.png) | Firefox exploit task results |
| p.78 | [alignment_audit_scores-078.png](./reports/assets/alignment_audit_scores-078.png) | Alignment audit comparison chart |
| p.150 | [welfare_metrics-150.png](./reports/assets/welfare_metrics-150.png) | Automated welfare-related audit metrics |

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

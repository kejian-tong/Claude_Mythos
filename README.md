# Claude Mythos Preview Analysis Pack

This repository contains a bilingual analysis pack based on Anthropic's `Claude Mythos Preview System Card` dated April 7, 2026.

## Reports

- [Chinese deep report](./reports/claude-mythos-preview-analysis.zh-CN.md)
- [English deep report](./reports/claude-mythos-preview-analysis.en.md)
- [Bilingual executive summary](./reports/claude-mythos-executive-summary.bilingual.md)
- [Chinese whitepaper edition](./reports/claude-mythos-whitepaper.zh-CN.md)
- [Social distribution kit](./reports/claude-mythos-social-kit.zh-CN.md)

## What is included

- A rigorous section-by-section reading of the full system card
- A shorter bilingual executive summary for fast circulation
- A more academic Chinese whitepaper-style synthesis
- Ready-to-post summary material for WeChat Moments, X/Twitter, and public-account articles
- A split between `evidence`, `interpretation`, and `speculation`
- Plain-English explanations of difficult safety and policy concepts
- Many concrete examples and analogies
- A skeptical-reader lens for each major part of the document
- A study guide for reading the system card from beginner to advanced level
- Embedded diagrams and selected figure pages extracted from the source PDF
- Exported HTML and PDF reading editions under [`dist`](./dist/)

## Recommended reading order

1. Start with the [bilingual executive summary](./reports/claude-mythos-executive-summary.bilingual.md) if you want the fastest orientation.
2. Read the [Chinese deep report](./reports/claude-mythos-preview-analysis.zh-CN.md) for the full section-by-section explanation.
3. Read the [Chinese whitepaper edition](./reports/claude-mythos-whitepaper.zh-CN.md) for the more academic synthesis and critique.
4. Use the [English report](./reports/claude-mythos-preview-analysis.en.md) as the publishable companion version.
5. Use the [social distribution kit](./reports/claude-mythos-social-kit.zh-CN.md) if you want copy-ready content for public posting.

## Visual references

Selected official figure pages from the PDF are included under [`reports/assets`](./reports/assets/):

- `eci_capability_trajectory-042.png`
- `firefox_exploit_results-050.png`
- `alignment_audit_scores-078.png`
- `welfare_metrics-150.png`

## Source note

- Source document: `Claude Mythos Preview System Card`
- Document date shown inside PDF: `2026-04-07`
- User-provided acquisition link: <https://x.com/bcherny/status/2041605852382351666>
- Provenance note: this repository analyzes the PDF contents themselves. The PDF file and extracted text were used locally and are not committed to this repository.

## Exported editions

Rendered HTML and PDF outputs are generated under [`dist`](./dist/). They are produced from the Markdown sources with `pandoc` and headless Chrome so the repository includes both editable source files and shareable reading versions.

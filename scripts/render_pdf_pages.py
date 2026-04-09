#!/usr/bin/env python3

"""
Render selected PDF pages to PNG files.

Requires:
    pip install pymupdf

Usage:
    python render_pdf_pages.py <pdf-path> <output-dir> <page:filename> [<page:filename> ...]
"""

from __future__ import annotations

import sys
from pathlib import Path

import fitz


def fail(message: str) -> "NoReturn":
    print(f"error: {message}", file=sys.stderr)
    raise SystemExit(1)


def main() -> None:
    if len(sys.argv) < 4:
        fail(
            "usage: python render_pdf_pages.py <pdf-path> <output-dir> "
            "<page:filename> [<page:filename> ...]"
        )

    pdf_path = Path(sys.argv[1]).expanduser()
    output_dir = Path(sys.argv[2]).expanduser()
    specs = sys.argv[3:]

    if not pdf_path.exists():
        fail(f"PDF not found: {pdf_path}")

    output_dir.mkdir(parents=True, exist_ok=True)
    document = fitz.open(pdf_path)
    matrix = fitz.Matrix(2.2, 2.2)

    for spec in specs:
        if ":" not in spec:
            fail(f"invalid render spec: {spec}")

        page_str, filename = spec.split(":", 1)
        try:
            page_number = int(page_str)
        except ValueError:
            fail(f"invalid page number in spec: {spec}")

        if page_number < 1 or page_number > document.page_count:
            fail(f"page out of range: {page_number}")

        page = document.load_page(page_number - 1)
        pixmap = page.get_pixmap(matrix=matrix, alpha=False)
        target = output_dir / filename
        pixmap.save(target)
        print(f"rendered page {page_number} -> {target}")


if __name__ == "__main__":
    main()

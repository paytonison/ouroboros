# Ouroboros LaTeX Project

This folder contains a compile-ready LaTeX source for the Ouroboros paper.

- `main.tex` — the LaTeX source (rewritten in TeX).
- `figures/prompt_editor.png` — figure extracted from the source PDF (page 3); status: extracted.
- The tables and algorithm are already formatted for LaTeX.

## How to compile

**TeX Live / macOS / Linux:**
```
pdflatex -interaction=nonstopmode -halt-on-error main.tex
bibtex main || true   # not required; inline bibliography present
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
```

**Windows (MiKTeX):**
Open `main.tex` in TeXworks and build with pdfLaTeX. Run twice for stable references.

If the `algorithm` and `algpseudocode` packages are missing, install them via your TeX distribution's package manager.

## Notes
- The figure was extracted from page 3 of the provided PDF.
- Tables 1 and 2 reproduce the results tables from pages 3–4 of the PDF.

#!/bin/bash

# Template sadly only works with TeXLive distribution, with glossary fixes

# Compile doc
pdflatex monografia.tex
# Process references
bibtex monografia
# Place citations
pdflatex monografia.tex
# Final compile
pdflatex monografia.tex


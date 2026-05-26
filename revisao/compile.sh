#!/bin/bash

# Usage: ./compile.sh [filename_without_extension]
# Default is 'main'
FILENAME=${1:-main}

echo "🚀 Starting compilation for $FILENAME..."

# 1. First pass
pdflatex -interaction=nonstopmode "$FILENAME.tex"

# 2. Process bibliography
bibtex "$FILENAME"

# 3. Second pass for references
pdflatex -interaction=nonstopmode "$FILENAME.tex"

# 4. Third pass for final layout/numbers
pdflatex -interaction=nonstopmode "$FILENAME.tex"

echo "✅ Done! Check $FILENAME.pdf"

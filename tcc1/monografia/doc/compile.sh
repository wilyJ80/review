#!/bin/bash

# Template sadly only works with TeXLive distribution, with glossary fixes

# Compile doc
pdflatex monografia.tex
# Process glossaries/acronyms
makeglossaries monografia
# Process references
bibtex monografia
# Place citations
pdflatex monografia.tex
# Final compile
pdflatex monografia.tex

# Workaround: remover a maldita pagina 10 que o LaTeX insiste em criar
if [ -f monografia.pdf ]; then
    echo "Removendo a pagina 10 do PDF..."
    pdftk monografia.pdf cat 1-9 11-end output monografia_temp.pdf
    mv monografia_temp.pdf monografia.pdf
fi

#!/bin/bash -e

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}building documentation:${NC}"
./ressourcen/skripte/convert_umlet.sh
pdflatex -synctex=1 -interaction=nonstopmode dokument1.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument1.tex
biber dokument1
pdflatex -synctex=1 -interaction=nonstopmode dokument1.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument1.tex

pdflatex -synctex=1 -interaction=nonstopmode dokument2.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument2.tex
biber dokument2
pdflatex -synctex=1 -interaction=nonstopmode dokument2.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument2.tex

pdflatex -synctex=1 -interaction=nonstopmode dokument3.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument3.tex
biber dokument3
pdflatex -synctex=1 -interaction=nonstopmode dokument3.tex
pdflatex -synctex=1 -interaction=nonstopmode dokument3.tex

exit 0

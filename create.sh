#!/bin/sh
filename=Refinement;
pdflatex -synctex=1 $filename.tex
bibtex $filename
makeindex -g -s index_style.ist $filename.idx -o $filename.ind
#makeindex $filename.ist $filename.adx -o $filename.and
#makeindex $filename.ist $filename.ddx -o $filename.dnd
#makeindex $filename.sdx -o $filename.snd
#makeindex $filename.ldx -o $filename.lnd
#makeindex $filename.kdx -o $filename.knd
makeindex -s $filename.ist -t $filename.alg -o $filename.acr $filename.acn
makeindex -s $filename.ist -t $filename.glg $filename.glo -o $filename.gls
makeindex -s $filename.ist -t $filename.slg -o $filename.syi $filename.syg
makeindex -s $filename.ist -t $filename.tlg -o $filename.tyi $filename.tyg
pdflatex -synctex=1 $filename.tex
pdflatex -synctex=1 $filename.tex

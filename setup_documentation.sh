#!/bin/bash -e

hasAptUpdate=$1
UNATTENDED=$2

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

cd ~

if [ ! $UNATTENDED ]
then
    echo -e "${ORANGE}upgrade system before installing documentation?${NC} [y/N]"
    read usbid
else
    usbid=y
fi
case $usbid in
    [yY]* )
        if [ ! $hasAptUpdate ]
            then
            sudo apt update
            hasAptUpdate=true
        fi
        sudo apt upgrade -y
        sudo apt autoremove -y
        ;;
    * )
esac

if [ -z $(which pdflatex) ]
then
    echo -e "${BLUE}installing texlive:${NC}"
    if [ ! $hasAptUpdate ]
    then
        sudo apt update
        hasAptUpdate=true
    fi
    sudo apt install -y texlive-full
fi

if [ -z $(which texstudio) ]
then
    echo -e "${BLUE}installing texstudio:${NC}"
    if [ ! $hasAptUpdate ]
    then
        sudo apt update
        hasAptUpdate=true
    fi
    sudo apt install -y texstudio
fi

if [ -z $(which umlet) ]
then
    echo -e "${BLUE}installing umlet:${NC}"
    if [ ! $hasAptUpdate ]
    then
        sudo apt updates
        hasAptUpdate=true
    fi
    sudo apt install -y umlet
fi

echo -e "${BLUE}building documentation:${NC}"
cd ~/dokumentation
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

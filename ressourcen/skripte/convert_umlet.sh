#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

UMLET_EXTENSION='uxf'
PICTIRE_EXTENSION='png'
INDIR="$SCRIPT_DIR/../."
OUTDIR="$SCRIPT_DIR/../generiert"

convert2png () {
    # Parameter $1 is the plain filename without path or extension.
    # Parameter $2 is the directory path to the file from $1.
    java -jar $SCRIPT_DIR/Umlet/umlet.jar -action=convert -format=$PICTIRE_EXTENSION -filename=$2/$1.$UMLET_EXTENSION -output=$OUTDIR/$1.$PICTIRE_EXTENSION
}

if [ ! -d "$OUTDIR" ]; then
    mkdir "$OUTDIR"
fi

for i in $(find $INDIR -name "*.$UMLET_EXTENSION")
do
    convert2png `basename $i .$UMLET_EXTENSION` $INDIR
done

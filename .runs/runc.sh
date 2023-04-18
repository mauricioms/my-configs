#!/bin/bash

runc () {
    clear
    defvalue=2
    TIME=${4:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="${FILE_SRC%%.*}.bin"
    echo "gcc $FILE_SRC -O2 -static -w -lm -o $FILE_BIN"
    echo "-------------------------------------------"
    if [ -n "$3" ]; then
        gcc $FILE_SRC -O2 -static -w -lm -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 > ./$3 && echo "" && rm ./$FILE_BIN
    else
        if [ -f "$2" ]; then
            gcc $FILE_SRC -O2 -static -w -lm -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 && echo "" && rm ./$FILE_BIN
        else
            gcc $FILE_SRC -O2 -static -w -lm -o $FILE_BIN && chmod a+x ./$FILE_BIN && ./$FILE_BIN && echo "" && rm ./$FILE_BIN
        fi
    fi
}

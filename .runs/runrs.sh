#!/bin/bash

runrs () {
    clear
    defvalue=2
    TIME=${4:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="${FILE_SRC%%.*}.bin"
    echo "rustc $FILE_SRC -o $FILE_BIN"
    echo "-----------------------------------------------"
    if [ -n "$3" ]; then
        rustc -O -A warnings $FILE_SRC -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 > ./$3 && echo "" && rm ./$FILE_BIN
    else
        if [ -f "$2" ]; then
            rustc -O -A warnings $FILE_SRC -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 && echo "" && rm ./$FILE_BIN
        else
            rustc -O -A warnings $FILE_SRC -o $FILE_BIN && chmod a+x ./$FILE_BIN && ./$FILE_BIN && echo "" && echo "" && rm ./$FILE_BIN
        fi
    fi
}

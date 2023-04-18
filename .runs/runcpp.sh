#!/bin/bash

runcpp () {
    clear
    defvalue=2
    TIME=${4:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="${FILE_SRC%%.*}.bin"
    echo "g++ $FILE_SRC -std=c++20 -O2 -lm -w -o $FILE_BIN"
    echo "-----------------------------------------------"
    if [ -n "$3" ]; then
        g++ $FILE_SRC -std=c++20 -O2 -lm -w -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 > ./$3 && echo "" && rm ./$FILE_BIN
    else
        if [ -f "$2" ]; then
            g++ $FILE_SRC -std=c++20 -O2 -lm -w -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeout $TIME ./$FILE_BIN < $2 && echo "" && rm ./$FILE_BIN
        else
            g++ $FILE_SRC -std=c++20 -O2 -lm -w -o $FILE_BIN && chmod a+x ./$FILE_BIN && timeexec ./$FILE_BIN && echo "" && echo "" && rm ./$FILE_BIN
        fi
    fi
}

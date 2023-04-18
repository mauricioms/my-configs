#!/bin/bash

runpy() {
    clear
    defvalue=2
    TIME=${30:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="${FILE_SRC%%.*}.py"

    if [ -f "$2" ]; then
      timeout $TIME python3 $FILE_SRC < $2
    else
      timeout $TIME python3 $FILE_SRC
    fi
}

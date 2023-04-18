#!/bin/bash

lang-format() {
    FILE_SRC=$1
    clang-format $FILE_SRC > $FILE_SRC.tmp
    mv $FILE_SRC.tmp $FILE_SRC
}

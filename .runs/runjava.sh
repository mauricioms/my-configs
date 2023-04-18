#!/bin/bash

runjava() {
    clear
    defvalue=2
    TIME=${3:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="Main"

    JAVA_HOME="/usr/lib/jvm/jdk-13.0.2/bin/"

    if [ "$FILE_SRC" != "Main.java" ]; then
        mv $FILE_SRC Main.java
    fi

    if [ -f "$2" ]; then
        $JAVA_HOME/javac -encoding UTF-8 Main.java && timeout $TIME $JAVA_HOME/java -Duser.language=en-US Main < $2 && rm ./Main.class
    else
        $JAVA_HOME/javac -encoding UTF-8 Main.java && $JAVA_HOME/java -Duser.language=en-US Main && rm ./Main.class
    fi
}

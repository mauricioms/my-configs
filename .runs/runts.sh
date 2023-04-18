#!/bin/bash

runts() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    npm install -D typescript
    npm install -D tslib @types/node

    clear
    defvalue=2
    TIME=${3:-$defvalue}
    FILE_SRC=$1
    FILE_BIN="${FILE_SRC%%.*}.js"

    if [ -f "$2" ]; then
        npx tsc $FILE_SRC && timeout $TIME node ./$FILE_BIN < $2 && rm ./$FILE_BIN
    else
        npx tsc $FILE_SRC && timeout $TIME node ./$FILE_BIN && rm ./$FILE_BIN
    fi
}

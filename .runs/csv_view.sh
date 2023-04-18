#!/bin/bash

csv_view () {
    clear
    defvalue=";"
    
    echo ${2:-$defvalue}

    cat $1 | column -s \\${2:-$defvalue} -t | less -N -S
}

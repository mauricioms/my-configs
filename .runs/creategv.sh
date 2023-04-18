#!/bin/bash
 
creategv () {

    echo "Name File Code: "
    read namecode
    
    CODE_OUT="$PWD/$namecode"
    CODE_OUT="$CODE_OUT.gv"

    if [[ ! -f "$CODE_OUT" ]] then

        echo "digraph G {" > $CODE_OUT
        echo "  node [shape="circle"];" >> $CODE_OUT
        echo "  nodesep=\"1\";" >> $CODE_OUT
        echo "}"  >> $CODE_OUT
        echo "" >> $CODE_OUT

    else
        echo "Already existing code."
    fi
 }


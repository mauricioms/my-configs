#!/bin/bash

for f in ~/.runs/*.sh; do
   x="${f##*/}"; x="${x%.*}"; exe="source $f"; eval "$exe"
done

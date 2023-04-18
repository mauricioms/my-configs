#!/bin/bash

timeexec () {
  ts=$(date +%s%N)
  $1
  tt=$((($(date +%s%N) - $ts)/1000000))
  echo "\nTime: $tt milliseconds"
}

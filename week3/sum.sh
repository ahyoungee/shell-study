#!/bin/bash
set -eu
# どこでもから実行するため
cd $(dirname $0)

awk '{ sum += $5} END {print sum}' tmp.txt
awk 'NR == 1; NR > 1 {print $0 | "sort -k 6"}' tmp.txt
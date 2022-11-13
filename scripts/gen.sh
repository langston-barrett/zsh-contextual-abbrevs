#!/bin/sh

for tool in cargo git make; do
  printf "_ABBREVS=(\n%s\n)\n" "$(./scripts/extract-abbrevs.py "${tool}")" > src/abbrevs/"${tool}".zsh
done

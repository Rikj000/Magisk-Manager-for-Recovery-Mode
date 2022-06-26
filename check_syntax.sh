#!/usr/bin/env bash
# Basic shell syntax checker
# Copyright (C) 2018-2022, VR25 & Rikj000 @ xda-developers
# License: GPLv3+

echo
cd ${0%/*} 2>/dev/null
for f in $(find . \( -path ./_builds -o -path ./_resources \) -prune \
  -o -type f -name '*.sh') ./mm
do
  [ -f "$f" ] && bash -n $f
done
echo

#!/usr/bin/bash

set -e
for f in *.sh; do
  bash "$f"
done

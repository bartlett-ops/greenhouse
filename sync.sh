#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

SOURCE_DIR="./"

while inotifywait --exclude '(.*\.sw[px]|.*\.lock|\.git/.*)' -r -e modify,create,delete "${SOURCE_DIR}"; do
  rsync --exclude '*.swp' --exclude '*.swx' --exclude '*.lock' --exclude '.git/' -azP "${SOURCE_DIR}" pi@raspberry:~/greenhouse
done

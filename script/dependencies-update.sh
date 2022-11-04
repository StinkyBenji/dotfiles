#!/bin/sh
#
# Run all dotfiles installers.

set -e

cd "$(dirname "$0")"/..

# find the installers and run them iteratively
find . -name update.sh | while read -r installer; do echo "installing: ${installer}" && sh -c "${installer}"; done
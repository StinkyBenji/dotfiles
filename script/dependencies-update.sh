#!/bin/sh
#
# Run all dotfiles update.sh.

set -e

cd "$(dirname "$0")"/..

# find the installers and run them iteratively
find . -name update.sh | while read -r update; do echo "updating: ${update}" && sh -c "${update}"; done
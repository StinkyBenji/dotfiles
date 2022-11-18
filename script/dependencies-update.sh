#!/bin/sh
#
# Run all dotfiles update.sh.

set -e

cd "$(dirname "$0")"/..

# find the installers and run them iteratively

find -H "$DOTFILES" -maxdepth 4 -name 'update.sh' -not -path '*.git*' -exec sh -c 'FILE="$1"; "$FILE"' _ {} \;

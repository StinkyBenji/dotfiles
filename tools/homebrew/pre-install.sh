#!/bin/sh
# Install homebrew if not already present

cd "$(dirname "$0")/.."
DOTFILE_HOME=$(pwd -P)

if test ! $(which brew); then
  echo "Start installing homebrew"

# Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin" || test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    if test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
      /home/linuxbrew/.linuxbrew/bin/brew shellenv >> $DOTFILE_HOME/homebrew/homebrew.path.zsh
      /home/linuxbrew/.linuxbrew/bin/brew bundle --file $DOTFILE_HOME/homebrew/Brewfile
    elif test "$(uname)" = "Darwin"; then
      info "MacOS config not yet implemented"
    fi
  fi
fi

exit 0
   

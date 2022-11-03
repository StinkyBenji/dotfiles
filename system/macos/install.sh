#!/bin/bash
if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

sudo softwareupdate -i -a
xcode-select --install



#!/usr/bin/env zsh
if [ $commands[oc] ]; then
  source <(oc completion zsh)
fi

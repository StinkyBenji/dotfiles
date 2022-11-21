if test ! "$(uname)" = "Linux"
  then
  exit 0
fi

export SOPS_AGE_KEY_FILE=$HOME/Library/Application\ Support/sops/age/keys.txt
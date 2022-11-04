#!/bin/sh
# this installs openshift-cli

OS_NAME="linux"

if test "$(uname)" = "Darwin"; then
  OS_NAME="mac"
fi

if test ! "$(command -v oc)"; then
  echo "Installing OpenShift CLI"
  
  mkdir -p "${DOTFILES}/tools/oc/tmp"
  curl -sSL "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.9.25/openshift-client-${OS_NAME}.tar.gz" > "${DOTFILES}/tools/oc/tmp/oc.tar.gz"
  
  tar xvzf "${DOTFILES}/tools/oc/tmp/oc.tar.gz" --directory "${DOTFILES}/tools/oc/tmp" "oc" 
  
  cp "${DOTFILES}/tools/oc/tmp/oc" "/usr/local/bin/oc"
  
  sudo chmod +x "/usr/local/bin/oc"
  rm -rf "${DOTFILES}/tools/oc/tmp"
fi

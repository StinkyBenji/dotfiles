#!/bin/sh
# this installs openshift-cli

OS_NAME="linux"

if test "$(uname)" = "Darwin"; then
  OS_NAME="mac"
fi

if test ! "$(command -v oc)"; then
  echo "Installing OpenShift CLI"
  
  mkdir -p "${DOTFILE_HOME}/tools/oc/tmp"
  curl -sSL "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-${OS_NAME}.tar.gz" > "${DOTFILE_HOME}/tools/oc/tmp/oc.tar.gz"
  
  tar xvzf "${DOTFILE_HOME}/tools/oc/tmp/oc.tar.gz" --directory "${DOTFILE_HOME}/tools/oc/tmp" "oc" 
  
  cp "${DOTFILE_HOME}/tools/oc/tmp/oc" "/usr/local/bin/oc"
  
  sudo chmod +x "/usr/local/bin/oc"
  rm -rf "${DOTFILE_HOME}/tools/oc/tmp"
fi

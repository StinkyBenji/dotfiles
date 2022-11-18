#!/bin/bash
if test "$(uname)" = "Linux"; then
    sh -c "sudo dnf upgrade -y" 
fi
    
  
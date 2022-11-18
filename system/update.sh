#!/bin/bash
if test "$(uname)" = "Linux"; then
    sh -c "sudo dnf upgrade -y" 
else
    sh -c "sudo softwareupdate -i -a"
fi  
    
  
#!/bin/sh
# Install homebrew if not already present

# Check if DOTFILES is set
if [ -z "$DOTFILES" ]; then
    echo "Error: DOTFILES environment variable is not set"
    exit 1
fi

if test ! "$(which brew)"; then
    echo "Installing Homebrew..."
    
    # Install the correct homebrew for each OS type
    if test "$(uname)" = "Darwin" || test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
        # Download and run the installation script
        if ! /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"; then
            echo "Error: Failed to install Homebrew"
            exit 1
        fi
        
        # Configure Homebrew based on OS
        if test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
            echo "Configuring Homebrew for Linux..."
            if [ ! -d "/home/linuxbrew/.linuxbrew" ]; then
                echo "Error: Linuxbrew installation directory not found"
                exit 1
            fi
            /home/linuxbrew/.linuxbrew/bin/brew shellenv >> "$DOTFILES/tools/homebrew/homebrew.path.zsh"
            /home/linuxbrew/.linuxbrew/bin/brew bundle --file "$DOTFILES/tools/homebrew/Brewfile"
        elif test "$(uname)" = "Darwin"; then
            echo "Configuring Homebrew for macOS..."
            brew bundle --file "$DOTFILES/tools/homebrew/Brewfile"
        fi
        
        echo "Homebrew installation completed successfully!"
    else
        echo "Error: Unsupported operating system"
        exit 1
    fi
else
    echo "Homebrew is already installed"
fi

exit 0
   

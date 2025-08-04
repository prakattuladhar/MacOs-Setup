#!/bin/bash

# Ask for the administrator password upfront to avoid being interrupted by password prompts
echo "Requesting sudo access"
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
# This ensures the sudo session stays active
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


touch ~/.bash_profile

# Setup Homebrew
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install wget
echo "Installing wget"
brew install wget

# Install Google Chrome
echo "Installing Google Chrome"
brew install --cask google-chrome
echo "alias chrome=\"open -na Google\\ Chrome\"" >> ~/.bash_profile

# Install Node.js and NVM
brew install node
brew install nvm

# Install VS Code
echo "Installing VS Code"
brew install --cask visual-studio-code
echo "Installing extensions"
code --install-extension esbenp.prettier-vscode
code --install-extension christian-kohler.path-intellisense
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension dbaeumer.vscode-eslint

# Install Postman
brew install --cask postman

# Install Microsoft Office Apps
brew install --cask microsoft-excel
brew install --cask microsoft-word
brew install --cask microsoft-powerpoint

# Install Zoom
brew install --cask zoom

# Install Docker
echo "Installing Docker"
brew install --cask docker

# Install dropbox
brew install --cask dropbox

# Install google drive
brew install --cask google-drive

brew install --cask drawio

# Reload the bash profile
source ~/.bash_profile

#!/bin/bash

touch ~/.bash_profile

#Setup Homebrew
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing cask"
brew install brew-cask

#install wget
echo "Installing wget"
brew install wget

#google chrome.
echo "Installing Google chrome"
brew cask install google-chrome 
echo "alias chrome=\"open -na Google\ Chrome\"">>~/.bash_profile

#node
brew install node


#vs code
echo "Installing vscode"
brew cask install visual-studio-code
echo "Installing extenstions"
code --install-extension esbenp.prettier-vscode
code --install-extension christian-kohler.path-intellisearp nse
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension dbaeumer.vscode-eslint

#postman
brew cask install postman

brew cask install android-studio

source ~/.bash_profile 
#!/usr/bin/env zsh

echo "\n<<<Starting Homebrew setup >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#installing formulae
echo "\n<<Installing formulae>>\n"
brew install bat
brew install httpie

#Installing casks
echo "\n<<Installing casks>>\n"
brew install --cask alt-tab
brew install --cask dbngin
brew install --cask discord
brew install --cask docker
brew install --cask firefox
brew install --cask fliqlo
brew install --cask folx
brew install --cask google-chrome
brew install --cask hiddenbar
brew install --cask optimus-player
brew install --cask postman
brew install --cask raycast
brew install --cask rectangle
brew install --cask signal
brew install --cask tableplus
brew install --cask tg-pro
brew install --cask visual-studio-code
brew install --cask warp

echo "\n<<<Ending Homebrew setup >>>\n"

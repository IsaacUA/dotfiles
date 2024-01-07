#!/usr/bin/env zsh

echo "\n<<<Starting Homebrew setup >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# #installing formulae
# echo "\n<<Installing formulae>>\n"
# brew install bat
# brew install httpie

# #Installing casks
# echo "\n<<Installing casks>>\n"
# brew install --no-quarantine --cask alt-tab
# brew install --no-quarantine --cask dbngin
# brew install --no-quarantine --cask discord
# brew install --no-quarantine --cask docker
# brew install --no-quarantine --cask firefox
# brew install --no-quarantine --cask fliqlo
# brew install --no-quarantine --cask folx
# brew install --no-quarantine --cask google-chrome
# brew install --no-quarantine --cask hiddenbar
# brew install --no-quarantine --cask optimus-player
# brew install --no-quarantine --cask postman
# brew install --no-quarantine --cask raycast
# brew install --no-quarantine --cask rectangle
# brew install --no-quarantine --cask signal
# brew install --no-quarantine --cask tableplus
# brew install --no-quarantine --cask tg-pro
# brew install --no-quarantine --cask visual-studio-code
# brew install --no-quarantine --cask warp
brew bundle --verbose
echo "\n<<<Ending Homebrew setup >>>\n"
#!/usr/bin/env zsh

echo "========================================"
echo "        🛠 Starting Homebrew setup 🛠       "
echo "========================================"
echo "This will check if Homebrew is installed and install packages from your Brewfile.\n"

if exists brew; then
    echo "⏭️ Brew exists, skipping install"
else
    echo "⬇️ Brew dosn't exist, continuing with install"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "\n📦 Installing packages from Brewfile..."
brew bundle --verbose --file=config/Brewfile --verbose

echo "\n========================================"
echo "       🎉 Homebrew setup complete 🎉       "
echo "========================================"

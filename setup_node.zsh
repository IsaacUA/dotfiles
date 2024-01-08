#!/usr/bin/env zsh

# TODO: Keep an eye out for a different '—no-quarantine' solution.
# Currently, you can't-do 'brew bundle —-no-quarantine' • as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474
echo "\n<<<Starting NODE setup >>>\n"

if exists $N_PREFIX/bin/node; then
    echo "NODE $(node -v) & NPM $(npm --version) are already installed"
else
    echo "Installing NODE & NPM with n..."
    n latest
fi


npm install -g nodemon
npm install -g typescript
echo "Global NPM packages installed:"
npm list --global --depth=0

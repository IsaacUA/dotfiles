#!/usr/bin/env zsh

# TODO: Keep an eye out for a different '—no-quarantine' solution.
# Currently, you can't-do 'brew bundle —-no-quarantine' • as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474
echo "\n<<<Starting NODE setup >>>\n"

if exists $N_PREFIX/bin/node; then
  echo "Node $($N_PREFIX/bin/node --version) & NPM $($N_PREFIX/bin/npm --version) already installed with n"
else
  echo "Installing Node & NPM with n..."
  n latest
  n lts
fi

npm install -g yarn
npm install -g nodemon
npm install -g typescript
npm install -g trash-cli


echo "Global NPM packages installed:"
npm list --global --depth=0

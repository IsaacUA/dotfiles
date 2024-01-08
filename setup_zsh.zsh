#!/usr/bin/env zsh

# TODO: Keep an eye out for a different '—no-quarantine' solution.
# Currently, you can't-do 'brew bundle —-no-quarantine' • as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474
echo '\n<<<Starting ZSH setup >>>\n'
echo '<<Enter sudo to edit /etc/shells>>'
echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' > /dev/null
echi '<<Enter user password to change login shell>>'
chsh -s '/opt/homebrew/bin/zsh'
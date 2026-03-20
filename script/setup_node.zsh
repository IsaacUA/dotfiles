#!/usr/bin/env zsh
echo "========================================"
echo "        🛠 Starting NODE setup 🛠       "
echo "========================================"
echo "This will install Node.js, configure your environment.\n"

if exists $N_PREFIX/bin/node; then
  echo "⏭️ Node $($N_PREFIX/bin/node --version) & NPM $($N_PREFIX/bin/npm --version) already installed with n"
else
  echo "⬇️ Installing Node & NPM with n..."
  n latest
  n lts
fi

npm install -g ts-node
npm install -g typescript
npm install -g trash-cli

echo "🌐 Global NPM packages installed:"
npm list --global --depth=0
echo "\n========================================"
echo "       🎉 NODE setup complete 🎉       "
echo "========================================"

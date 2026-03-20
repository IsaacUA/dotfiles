#!/usr/bin/env zsh

echo "/n========================================"
echo "        🛠 Starting MacOS setup 🛠       "
echo "========================================"
echo "This will configure your MacOS environment.\n"

# Enable 3-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true && \
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Hide dock
defaults write com.apple.dock autohide -bool true

killall Dock

echo "\n========================================"
echo "       🎉 MacOS setup complete 🎉       "
echo "========================================"



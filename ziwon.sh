#!/usr/bin/env bash
# Ref: https://github.com/andromedarabbit/dotfiles/blob/master/bootstrap.sh

# Ask for sudo sccese.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 2400; kill -0 "$$" || exit; done 2>/dev/null &

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Allow apps from anywhere in Gatekeeper 
sudo spctl --master-disable

# Installing
echo "Installing..."

brew update && brew upgrade
brew bundle

# Return to the default strict Gatekeeper settings
sudo spctl --master-enable


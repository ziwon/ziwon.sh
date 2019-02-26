#!/usr/bin/env bash

# Setup REPO_HOME
REPO_HOME="$HOME/Workspace/GitHub/ziwon"
[ ! -d $REPO_HOME ] && mkdir -p $REPO_HOME || true

# Clone repo if not exists
cd $REPO_HOME;
[ ! -d ziwon.sh ] && git clone https://github.com/ziwon/ziwon.sh.git || cd ziwon.sh && git pull

# Ref: https://github.com/andromedarabbit/dotfiles/blob/master/bootstrap.sh
# Ask for sudo accese.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 2400; kill -0 "$$" || exit; done 2>/dev/null &

# Build xcode 
if test ! $(which xcodebuild); then
  sudo xcodebuild -license accept
fi

# Install brew
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

# Initialize commons
commons=(bash zsh nvim tmux)
for dir in $commons; do
	bash -c "$dir/init"
done;

# Initialize others
dirlist=$(find . -mindepth 1 -maxdepth 1 -type d -not -path "*/.*" $(printf "! -name %s " $commons) | awk -F ./ '{print $NF}')
for dir in $dirlist; do
	bash -c "$dir/init"
done;
unset commons;
unset dirlist;
unset dir;

# Change shell
sudo chsh -s /usr/local/bin/zsh $USER

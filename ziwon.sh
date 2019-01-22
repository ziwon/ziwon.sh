#!/usr/bin/env bash

# Clone repository if not exists
REPO_HOME="$HOME/Workspace/GitHub/ziwon/ziwon.sh"
if [ ! -d $REPO_HOME ]; then
	mkdir -p $REPO_HOME
	git clone git@github.com:ziwon/ziwon.sh.git
	cd ziwon.sh
else
	cd $REPO_HOME
fi

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
brew bundle --file=$REPO_HOME/Brewfile

# Return to the default strict Gatekeeper settings
sudo spctl --master-enable

# Initialize
dirlist=$(find . -mindepth 1 -maxdepth 1 -type d -not -path "*/.*"  | awk -F ./ '{print $NF}')
for dir in $dirlist; do
	bash -c "$dir/init"
done;
unset dirlist;
unset dir;

# Change shell
sudo chsh -s /usr/local/bin/zsh $USER

#!/usr/bin/env zsh

# Initialize pyenv
command -v pyenv &> /dev/null && eval "$(pyenv init -)"
command -v pyenv-virtualenv &> /dev/null && eval "$(pyenv virtualenv-init -)"

# Initialize goenv
command -v goenv &> /dev/null && eval "$(goenv init -)"

# Setup direnv
eval "$(direnv hook zsh)"

# Setup rbenv
eval "$(rbenv init -)"

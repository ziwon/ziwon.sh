source /usr/local/bin/antigen.zsh

antigen use oh-my-zsh

antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle leophys/zsh-plugin-fzf-finder
antigen bundle ascii-soup/zsh-url-highlighter
antigen bundle denysdovhan/spaceship-prompt
antigen bundle djui/alias-tips
antigen bundle Dabz/kafka-zsh-completions
antigen bundle bobthecow/git-flow-completion
antigen theme  caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

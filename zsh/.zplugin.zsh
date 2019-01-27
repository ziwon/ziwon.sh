if [[ -f "${HOME}/.zplugin/bin/zplugin.zsh" ]]; then
	# Load `zplugin`
	autoload -Uz _zplugin
	(( ${+_comps} )) && _comps[zplugin]=_zplugin
	source "${HOME}/.zplugin/bin/zplugin.zsh"
else
	# Install `zplugin` if not installed
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
	source "${HOME}/.zplugin/bin/zplugin.zsh"
fi

# Most themesn use this option
setopt promptsubst

# Color
zplugin light zdharma/fast-syntax-highlighting
zplugin light zuxfoucault/colored-man-pages_mod
zplugin light chrissicool/zsh-256color

# Zplugin
zplugin light zdharma/history-search-multi-word
zplugin light bric3/nice-exit-code
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-autosuggestions
zplugin light djui/alias-tips
zplugin light dbz/kube-aliases
zplugin snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh
zplugin snippet OMZ::plugins/golang/golang.plugin.zsh
zplugin ice as"completion"; zplugin snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker
zplugin ice as"completion"; zplugin snippet https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/docker-compose/_docker-compose

# Git
zplugin snippet OMZ::lib/git.zsh
zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras

zplugin ice wait"2" lucid as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

# Tmux
zplugin snippet OMZ::plugins/tmux/tmux.plugin.zsh
zplugin light greymd/tmux-xpanes

# Others
zplugin snippet OMZ::plugins/gpg-agent/gpg-agent.plugin.zsh
zplugin ice from"gh-r" as"program" mv"fd-*/fd -> fd"; zplugin load sharkdp/fd
zplugin ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zplugin light direnv/direnv

# Theme
zplugin load caiogondim/bullet-train.zsh

autoload -Uz compinit
compinit

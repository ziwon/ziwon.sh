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
zplugin light b4b4r07/enhancd
zplugin light bric3/nice-exit-code
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-autosuggestions
zplugin snippet OMZ::plugins/common-aliases/common-aliases.plugin.zsh
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

# Git
zplugin snippet OMZ::lib/git.zsh
zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras

zplugin ice wait"2" lucid as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

zplugin ice wait"2" lucid as"program" pick"$ZPFX/bin/git-now" make"prefix=$ZPFX install"
zplugin light iwata/git-now
zplugin ice wait"2" lucid as"program" pick"$ZPFX/bin/git-alias" make"PREFIX=$ZPFX" nocompile
zplugin light tj/git-extras
zplugin ice wait"2" lucid as"program" atclone'perl Makefile.PL PREFIX=$ZPFX' atpull'%atclone' \
            make'install' pick"$ZPFX/bin/git-cal"
zplugin light k4rthik/git-cal

# Tmux
zplugin snippet OMZ::plugins/tmux/tmux.plugin.zsh
zplugin light greymd/tmux-xpanes

# Others
zplugin snippet OMZ::plugins/gpg-agent/gpg-agent.plugin.zsh
zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin
zplugin ice from"gh-r" as"program" mv"fd-*/fd -> fd"; zplugin load sharkdp/fd
zplugin ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zplugin light direnv/direnv

# Theme
zplugin load caiogondim/bullet-train.zsh

autoload -Uz compinit
compinit

# Load the shell dotfiles, and then some:
for file in ~/.{exports,aliases,functions,extra,prompt}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

setopt inc_append_history   # write to history immediately
setopt share_history        # share history among terminals
setopt extended_history     # save extended info in history
setopt hist_ignoredups      # ignore duplicates

bindkey -v

bindkey "^R" history-search-multi-word  # ctrl-r
bindkey "^A" beginning-of-line          # ctrl-a
bindkey "^E" end-of-line                # ctrl-e
bindkey "^F" forward-word               # ctrl-f
bindkey "^B" backward-word              # ctrl-b

# Fix conflicts with ctrl-{h,j,k,l} in tmux
bindkey "^[" vi-change-whole-line     # ctrl-l -> ctrl-[
bindkey "^]" clear-screen             # ctrl-k -> ctrl-]
bindkey "^G" vi-backward-delete-char  # ctrl-h -> ctrl-g
bindkey "^O" accept-line              # ctrl-j -> ctrl-o

zstyle ":history-search-multi-word" page-size "5"                      # number of entries to show (default is $LINES/3)
zstyle ":history-search-multi-word" highlight-color "fg=yellow,bold"   # color in which to highlight matched, searched text (default bg=17 on 256-color terminals)
zstyle ":plugin:history-search-multi-word" synhl "yes"                 # whether to perform syntax highlighting (default true)
zstyle ":plugin:history-search-multi-word" active "underline"          # effect on active history entry. Try: standout, bold, bg=blue (default underline)
zstyle ":plugin:history-search-multi-word" check-paths "yes"           # whether to check paths for existence and mark with magenta (default true)
zstyle ":plugin:history-search-multi-word" clear-on-cancel "no"        # whether pressing

[ $commands[minikube] ] && source <(minikube completion zsh);
[ $commands[kubectl] ] && source <(kubectl completion zsh);
[ $commands[helm] ] && source <(helm completion zsh);

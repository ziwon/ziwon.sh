# Load the shell dotfiles, and then some:
for file in ~/.{exports,aliases,functions,extra,prompt}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

bindkey -v

bindkey "^R" history-search-multi-word  # ctrl-r
bindkey "^A" beginning-of-line          # ctrl-a
bindkey "^E" end-of-line                # ctrl-e
bindkey "^F" forward-word               # ctrl-f
bindkey "^B" backward-word              # ctrl-b
bindkey "^K" vi-change-whole-line       # ctrl-k

[ $commands[minikube] ] && source <(minikube completion zsh);
[ $commands[kubectl] ] && source <(kubectl completion zsh);
[ $commands[helm] ] && source <(helm completion zsh);

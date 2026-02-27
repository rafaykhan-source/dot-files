eval "$(starship init zsh)"

setopt histignorealldups
setopt sharehistory
unsetopt autocd

# Aliases
source ~/.bash_aliases

# Path Modifications
source ~/.bash_paths

# Extra
source <(fzf --zsh)
eval "$(zoxide init zsh)"


bindkey -v
export KEYTIMEOUT=1

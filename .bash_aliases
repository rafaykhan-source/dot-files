alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.

# Use 'less' instead of 'more'.
alias less='less --quit-at-eof --no-init --tabs=4 --RAW-CONTROL-CHARS'
alias more='less'

# Add colors to 'ls'.
alias ls='lsd'
alias ll='lsd -Al'
alias lt='lsd --tree'
alias cat='bat --paging=never'

# Add color to 'grep' and relatives (when not piped or redirected).
alias grep='grep --color=auto'

# Make activate semantically consistent with deactivate.
alias activate='. .venv/bin/activate'

# Extra
alias g='git'
alias gl='glab'

# Shell Variable Modifications
export PATH="$PATH:$HOME/.scripts"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Dotfile Management
# git init --bare ~/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
# dotfiles config status.showUntrackedFiles no

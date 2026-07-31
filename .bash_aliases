alias rm='rm -i'         # Prompt before removing files via 'rm'.
alias cp='cp -i'         # Prompt before overwriting files via 'cp'.
alias mv='mv -i'         # Prompt before overwriting files via 'mv'.
alias ln='ln -i'         # Prompt before overwriting files via 'ln'.
alias vim='nvim'

# Use 'less' instead of 'more'.
alias less='less --quit-at-eof --no-init --tabs=4 --RAW-CONTROL-CHARS'
alias more='less'

# Add colors to 'ls'.
alias ls='lsd'
alias ll='lsd -Al'
alias cat='bat --paging=never'

# Add color to 'grep' and relatives (when not piped or redirected).
alias grep='grep --color=auto'

# Make activate semantically consistent with deactivate.
alias activate='. .venv/bin/activate'

# Extra
alias g='git'
alias gl='glab'


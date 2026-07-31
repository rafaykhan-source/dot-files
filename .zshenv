export HOMEBREW_BUNDLE_CLEANUP_NO_VSCODE=1

export EDITOR=nvim

export PATH="$HOME/.local/bin:$PATH"
. "$HOME/.cargo/env"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:$HOME/.scripts"

export LEDGER_FILE=~/finances/.hledger.journal

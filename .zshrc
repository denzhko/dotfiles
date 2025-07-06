#!/usr/bin/env zsh

# Export my scripts path
export PATH="${PATH}:${HOME}/bin"

# Export go bin path
export PATH="${PATH}:$(go env GOPATH)/bin"

# Export psql path from libpq brew formula
export PATH="${PATH}:/opt/homebrew/opt/libpq/bin"

# Setup autocomplete
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	autoload -Uz compinit
	compinit
fi

# Setup node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source aliases
if [ -e ~/.zsh_aliases ]; then
	source ~/.zsh_aliases
fi

# Some private setup
if [ -e ~/.zshrc.private ]; then
	source ~/.zshrc.private
fi

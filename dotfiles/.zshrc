# Aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Exports
[ -f ~/.bash_exports ] && source ~/.bash_exports

# Setup autocomplete
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	autoload -Uz compinit
	compinit
fi

# Export psql path from libpq brew formula
if brew list libpq &> /dev/null; then
    export PATH="${PATH}:/opt/homebrew/opt/libpq/bin"
fi

# Private
if [ -e ~/.zshrc.private ]; then
	source ~/.zshrc.private
fi

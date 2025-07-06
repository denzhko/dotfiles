#!/usr/bin/env zsh

set -euo pipefail

FORCE=0
for arg in "$@"; do
	case "$arg" in
		-f|--force)
			FORCE=1
			;;
		*)
			echo "Unknown argument: $arg" >&2
			exit 1
		;;
	esac
done

cd "$(dirname "${(%):-%N}")"

git pull origin main

function doIt() {
	rsync \
		--archive \
		--verbose \
		--human-readable \
		--backup --suffix=".backup_$(date +%Y%m%d_%H%M%S)" \
		.tmux.conf \
		.zsh_aliases \
		.zshrc \
		~
}

if (( FORCE )); then
	doIt
else
	read "REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo ""
	if [[ "${REPLY}" =~ "^[Yy]$" ]]; then
		doIt
	fi
fi

# dotfiles

Shell config files symlinked to `~/` via [GNU Stow](https://www.gnu.org/software/stow/).

## Requirements

| Tool | Ubuntu | macOS |
|------|--------|-------|
| git | `sudo apt install git` | pre-installed or `brew install git` |
| stow | `sudo apt install stow` | `brew install stow` |

## Install

```sh
git clone git@github.com:denzhko/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow dotfiles
```

## Private config

Machine-specific settings go in untracked private files sourced automatically:
`~/.bash_aliases.private`, `~/.bash_exports.private`, `~/.zshrc.private`

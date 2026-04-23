# Dotfiles

Minimal personal dotfiles for macOS and Linux. Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/     Shell config files — symlinked to ~/
guiconfigs/   GUI app configs applied manually
packages/     Package installation scripts per platform
```

## Quick Start

```sh
git clone git@github.com:denzhko/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow dotfiles
```

## References

- [Guide to dotfiles on GitHub](https://dotfiles.github.io/)
- [Stow to manage dotfiles](https://youtu.be/y6XCebnB9gs)

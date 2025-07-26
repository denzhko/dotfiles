#!/usr/bin/env zsh

set -euo pipefail

# GUI applications
brew install --cask beekeeper-studio
brew install --cask iterm2
brew install --cask keepassxc
brew install --cask obsidian
brew install --cask telegram
brew install --cask vscodium

# LLM
brew install  ollama

# Docker
brew install lima
brew install colima
brew install docker
brew install docker-compose
brew install docker-credential-helper

# Kubernetes
brew install kubectl
brew install kubectx

# Development
brew install go
brew install golangci-lint
brew install grpc
brew install grpcurl
brew install libpq

# Shell
brew install ranger
brew install rg
brew install tmux
brew install tree
brew install zsh-completions
brew install kcat

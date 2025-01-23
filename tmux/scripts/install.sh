#!/usr/bin/env bash

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

ln -s "$DOTFILES_ROOT/tmux.conf.symlink" ~/.tmux.conf

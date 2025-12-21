#!/bin/bash

# getting directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# .config
config_symlink() {
  if [[ -e "$HOME/.config/$1" ]]; then
    if [[ -L "$HOME/.config/$1" ]]; then
      rm "$HOME/.config/$1"
    else
      rm -rf "$HOME/.config/$1"
    fi
  fi

  ln -s "$SCRIPT_DIR/$1" "$HOME/.config/$1"
}

mkdir -p ~/.config
config_symlink "nvim"
config_symlink "alacritty"

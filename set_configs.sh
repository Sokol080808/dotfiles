#!/bin/bash
set -euo pipefail

# getting directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# .config
config_symlink() {
  if [[ -e "$HOME/.config/$1" || -L "$HOME/.config/$1" ]]; then
    if [[ -L "$HOME/.config/$1" ]]; then
      rm "$HOME/.config/$1"
    else
      # back up an existing real config instead of deleting it
      mv "$HOME/.config/$1" "$HOME/.config/$1.bak.$(date +%s)"
    fi
  fi

  ln -s "$SCRIPT_DIR/$1" "$HOME/.config/$1"
}

mkdir -p ~/.config
config_symlink "nvim"
config_symlink "alacritty"
config_symlink "ghostty"

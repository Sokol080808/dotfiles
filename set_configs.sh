#!/bin/bash

# getting directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# .config
mkdir -p ~/.config
ln -sf "$SCRIPT_DIR/nvim" ~/.config/nvim

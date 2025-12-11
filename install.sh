#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(pwd)"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config.backup-$(date +%Y%m%d_%H%M%S)"

echo "Backing up current .config -> $BACKUP_DIR"
mv "$CONFIG_DIR" "$BACKUP_DIR"

echo "Creating new .config"
mkdir -p "$CONFIG_DIR"

echo "Copying directories from $DOTFILES_DIR -> $CONFIG_DIR"
cp -r "$DOTFILES_DIR"/* "$CONFIG_DIR"

echo "Done."

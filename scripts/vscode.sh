#!/usr/bin/env bash
# =============================================================================
# vscode.sh — VSCode Settings + Extensions
# =============================================================================

DOTFILES="$HOME/.dotfiles"
BOLD="\033[1m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }
warn()    { echo -e "${YELLOW}⚠ $1${RESET}"; }

info "Copying VSCode settings..."
VSCODE_DIR="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_DIR"
cp "$DOTFILES/vscode/settings.json" "$VSCODE_DIR/settings.json"
success "VSCode settings copied"

info "Installing VSCode extensions..."
if command -v code &>/dev/null; then
  grep -v "^#" "$DOTFILES/vscode/extensions.txt" | grep -v "^$" | while read -r ext; do
    code --install-extension "$ext" --force
  done
  success "VSCode extensions installed"
else
  warn "VSCode CLI not found, skipping extensions"
fi

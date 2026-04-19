#!/usr/bin/env bash
# =============================================================================
# tmux.sh — Tmux + TPM Setup
# =============================================================================

BOLD="\033[1m"
GREEN="\033[0;32m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }

info "Checking TPM (Tmux Plugin Manager)..."
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  info "Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
  success "TPM installed"
else
  success "TPM already installed"
fi

info "Installing Tmux plugins..."
"$HOME/.tmux/plugins/tpm/bin/install_plugins"
success "Tmux plugins installed"

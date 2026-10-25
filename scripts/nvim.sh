#!/usr/bin/env bash
# =============================================================================
# nvim.sh — Neovim plugin setup
# =============================================================================

BOLD="\033[1m"
GREEN="\033[0;32m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }

info "Installing Neovim plugins via lazy.nvim..."
nvim --headless "+Lazy! sync" +qa
success "Neovim plugins installed"

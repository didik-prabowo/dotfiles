#!/usr/bin/env bash
# =============================================================================
# golang.sh — GVM + Go Setup
# =============================================================================

BOLD="\033[1m"
GREEN="\033[0;32m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }

info "Checking GVM..."
if [ ! -d "$HOME/.gvm" ]; then
  info "Installing GVM..."
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
  success "GVM installed"
else
  success "GVM already installed"
fi

info "Installing Go 1.22.0 via GVM..."
zsh -i -c "source $HOME/.gvm/scripts/gvm && gvm install go1.22.0 --binary && gvm use go1.22.0 --default"
success "Go 1.22.0 active"

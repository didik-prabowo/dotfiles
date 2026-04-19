#!/usr/bin/env bash
# =============================================================================
# brew.sh — Homebrew + Brewfile Setup
# =============================================================================

DOTFILES="$HOME/.dotfiles"
BOLD="\033[1m"
GREEN="\033[0;32m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }

info "Checking Homebrew..."
if ! command -v brew &>/dev/null; then
  info "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  success "Homebrew installed"
else
  success "Homebrew already installed"
fi

info "Installing packages from Brewfile..."
brew bundle --file="$DOTFILES/homebrew/Brewfile"
success "Brew bundle complete"

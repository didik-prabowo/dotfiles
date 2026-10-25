#!/usr/bin/env bash
# =============================================================================
# git.sh — Git Identity Setup
# =============================================================================

BOLD="\033[1m"
GREEN="\033[0;32m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }

echo ""
info "Setting up Git identity..."
read -rp "Your name: " git_name
read -rp "Your email: " git_email

if [ -n "$git_name" ] && [ -n "$git_email" ]; then
  git config --file "$HOME/.gitconfig.local" user.name  "$git_name"
  git config --file "$HOME/.gitconfig.local" user.email "$git_email"
  success "Git identity set: $git_name <$git_email>"
fi

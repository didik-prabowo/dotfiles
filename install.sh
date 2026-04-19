#!/usr/bin/env bash
# =============================================================================
# install.sh — Dotfiles Setup Script
# Usage: bash install.sh
# =============================================================================

set -e

DOTFILES="$HOME/.dotfiles"
BOLD="\033[1m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RESET="\033[0m"

info()    { echo -e "${BOLD}→ $1${RESET}"; }
success() { echo -e "${GREEN}✓ $1${RESET}"; }
warn()    { echo -e "${YELLOW}⚠ $1${RESET}"; }

echo ""
echo -e "${BOLD}╔══════════════════════════════╗${RESET}"
echo -e "${BOLD}║   Dotfiles Setup — macOS     ║${RESET}"
echo -e "${BOLD}╚══════════════════════════════╝${RESET}"
echo ""

# =============================================================================
# 1. Homebrew + Brewfile
# =============================================================================
bash "$DOTFILES/scripts/brew.sh"

# =============================================================================
# 2. GNU Stow — Symlink Dotfiles
# =============================================================================
info "Creating symlinks with GNU Stow..."
PACKAGES=(zsh git config nvim)
for pkg in "${PACKAGES[@]}"; do
  if [ -d "$DOTFILES/$pkg" ]; then
    stow --dir="$DOTFILES" --target="$HOME" --restow "$pkg"
    success "stow $pkg"
  else
    warn "Package $pkg not found, skipping"
  fi
done

# =============================================================================
# 3. Oh My Zsh + Plugins
# =============================================================================
bash "$DOTFILES/scripts/zsh.sh"

# =============================================================================
# 4. Go + GVM
# =============================================================================
bash "$DOTFILES/scripts/golang.sh"

# =============================================================================
# 5. Tmux + TPM
# =============================================================================
bash "$DOTFILES/scripts/tmux.sh"

# =============================================================================
# 6. macOS Defaults
# =============================================================================
read -rp "$(echo -e "\nApply macOS system defaults? [y/N] ")" apply_defaults
if [[ "$apply_defaults" =~ ^[Yy]$ ]]; then
  bash "$DOTFILES/macos/defaults.sh"
fi

# =============================================================================
# 7. Git Config
# =============================================================================
bash "$DOTFILES/scripts/git.sh"

# =============================================================================
# 8. VSCode
# =============================================================================
bash "$DOTFILES/scripts/vscode.sh"


# =============================================================================
# 9. NVIM
# =============================================================================
bash "$DOTFILES/scripts/nvim.sh"

# =============================================================================
# Done
# =============================================================================
echo ""
echo -e "${GREEN}${BOLD}╔══════════════════════════════╗${RESET}"
echo -e "${GREEN}${BOLD}║   Setup complete! 🎉         ║${RESET}"
echo -e "${GREEN}${BOLD}╚══════════════════════════════╝${RESET}"
echo ""
echo "Next steps:"
echo "  1. Restart terminal or run: source ~/.zshrc"
echo "  2. Inside tmux, press: Ctrl+A + I  (install TPM plugins)"
echo "  3. Edit ~/.gitconfig if needed"
echo ""

# #!/usr/bin/env bash
# # =============================================================================
# # nvim.sh — Neovim setup
# # =============================================================================

# BOLD="\033[1m"
# GREEN="\033[0;32m"
# RESET="\033[0m"

# info()    { echo -e "${BOLD}→ $1${RESET}"; }
# success() { echo -e "${GREEN}✓ $1${RESET}"; }

# # Remove old config if exists
# if [ -d "$HOME/.config/nvim" ] && [ ! -L "$HOME/.config/nvim" ]; then
#   info "Backing up existing Neovim config..."
#   mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak"
#   success "Backed up to ~/.config/nvim.bak"
# fi

# info "Installing Neovim plugins via lazy.nvim..."
# nvim --headless "+Lazy! sync" +qa
# success "Neovim plugins installed"


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

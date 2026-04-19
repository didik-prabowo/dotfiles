# dotfiles

Personal macOS development environment managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Stack

| Tool            | Purpose              |
| --------------- | -------------------- |
| macOS           | Operating system     |
| Zsh + Oh My Zsh | Shell                |
| Tmux + TPM      | Terminal multiplexer |
| Iterm           | Terminal             |
| Neovim          | Text editor          |
| VSCode          | IDE                  |
| Homebrew        | Package manager      |
| GNU Stow        | Dotfiles manager     |
| GVM             | Go version manager   |

## Structure

```
~/.dotfiles/
├── config/             # XDG config (~/.config/)
│   └── .config/
│       ├── nvim/       # Neovim config
│       ├── tmux/       # Tmux config
│       ├── lazygit/    # Lazygit config
│       ├── bat/        # Bat config
│       └── gh/         # GitHub CLI config
├── zsh/                # Zsh config (~/.zshrc, .aliases, etc)
├── git/                # Git config (~/.gitconfig)
├── ssh/                # SSH config (~/.ssh/config)
├── homebrew/           # Brewfile
├── vscode/             # VSCode settings & extensions
├── macos/              # macOS system defaults
├── scripts/            # Setup scripts (not stowed)
├── .stow-global-ignore
├── install.sh          # Main setup script
├── Makefile            # Shortcut commands
└── README.md
```

## Fresh Install

```bash
# 1. Clone repo
git clone git@github.com:username/dotfiles.git ~/.dotfiles

# 2. Run installer
cd ~/.dotfiles
bash install.sh
```

The installer will:

1. Install Homebrew + all packages from Brewfile
2. Symlink all dotfiles via GNU Stow
3. Install Oh My Zsh + plugins
4. Install GVM + Go 1.22.0
5. Install Tmux plugins via TPM
6. Apply macOS system defaults (optional)
7. Setup Git identity
8. Copy VSCode settings + install extensions
9. Install Neovim plugins via lazy.nvim

## Zsh

| File         | Purpose                            |
| ------------ | ---------------------------------- |
| `.zshrc`     | Main config, loads all files below |
| `.aliases`   | All aliases                        |
| `.exports`   | Environment variables              |
| `.functions` | Custom functions                   |
| `.golang`    | GVM + Go environment               |
| `.fzf`       | fzf config + keybindings           |

## Neovim

Built from scratch with [lazy.nvim](https://github.com/folke/lazy.nvim).

```
nvim/
├── init.lua              # Entry point + lazy bootstrap
└── lua/
    ├── core/
    │   ├── options.lua   # Vim settings
    │   └── keymaps.lua   # Keybindings (Space as leader)
    └── plugins/
        ├── colorscheme.lua  # Catppuccin
        ├── ui.lua           # mini.statusline, Neo-tree, gitsigns
        ├── treesitter.lua   # Syntax highlighting
        ├── telescope.lua    # Fuzzy finder
        ├── lsp.lua          # LSP + autocomplete
        ├── go.lua           # Go development
        └── formatting.lua   # conform.nvim
```

Key bindings:

| Key        | Action               |
| ---------- | -------------------- |
| `Space`    | Leader key           |
| `Space+e`  | Toggle file explorer |
| `Space+ff` | Find files           |
| `Space+fg` | Live grep            |
| `Space+fb` | Find buffers         |
| `Space+w`  | Save file            |
| `Space+q`  | Quit                 |
| `gd`       | Go to definition     |
| `K`        | Hover docs           |
| `Space+rn` | Rename               |
| `Space+ca` | Code action          |
| `jk`       | Exit insert mode     |
| `Space+gg` | Open Lazygit         |
| `Space+gb` | Toggle git blame     |
| `Space+xx` | All diagnostics      |
| `Space+xs` | Symbols              |
| `Space+xq` | Quickfix list        |

## Tmux

Prefix key: `Ctrl+A`

| Key                | Action              |
| ------------------ | ------------------- |
| `Prefix + \|`      | Split vertical      |
| `Prefix + -`       | Split horizontal    |
| `Prefix + h/j/k/l` | Navigate panes      |
| `Prefix + r`       | Reload config       |
| `Prefix + I`       | Install TPM plugins |
| `Prefix + Ctrl+S`  | Save session        |
| `Prefix + Ctrl+R`  | Restore session     |

## VSCode

Run `vscode-sync` after installing new extensions to keep `extensions.txt` up to date.

```bash
vscode-sync   # export current extensions to extensions.txt
```

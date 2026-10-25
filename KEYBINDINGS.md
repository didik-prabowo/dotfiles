# Keybinding Reference

Personal dotfiles keybinding cheatsheet — macOS + Neovim + Tmux.

---

## Neovim

> Leader key: `Space`

### General

| Key | Action |
|---|---|
| `Space+w` | Save file |
| `Space+q` | Quit |
| `Space+Q` | Quit all |
| `jk` | Exit insert mode |
| `Esc` | Clear search highlight |

### Navigation

| Key | Action |
|---|---|
| `h / j / k / l` | Move left / down / up / right |
| `w` | Jump to next word |
| `b` | Jump to previous word |
| `0` | Start of line |
| `$` | End of line |
| `gg` | Top of file |
| `G` | Bottom of file |
| `Ctrl+d` | Scroll half page down (centered) |
| `Ctrl+u` | Scroll half page up (centered) |
| `%` | Jump to matching bracket |

### Windows & Splits

| Key | Action |
|---|---|
| `Space+sv` | Split vertical |
| `Space+sh` | Split horizontal |
| `Ctrl+h` | Move to left window |
| `Ctrl+j` | Move to bottom window |
| `Ctrl+k` | Move to top window |
| `Ctrl+l` | Move to right window |

### Buffers

| Key | Action |
|---|---|
| `Tab` | Next buffer |
| `Shift+Tab` | Previous buffer |
| `Space+bd` | Delete buffer |

### File Explorer (Neo-tree)

| Key | Action |
|---|---|
| `Space+e` | Toggle file explorer |
| `Enter` | Open file |
| `s` | Open in vertical split |
| `S` | Open in horizontal split |
| `t` | Open in new tab |
| `a` | New file |
| `A` | New folder |
| `r` | Rename file |
| `d` | Delete file |
| `c` | Copy file |
| `x` | Cut file |
| `p` | Paste file |
| `m` | Move file |
| `y` | Copy filename |

### Telescope

| Key | Action |
|---|---|
| `Space+ff` | Find files |
| `Space+fg` | Live grep |
| `Space+fb` | Find buffers |
| `Space+fr` | Recent files |
| `Space+fh` | Help tags |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `Space+rn` | Rename symbol |
| `Space+ca` | Code action |
| `Space+f` | Format file |
| `Space+e` | Show diagnostics float |
| `Space+dp` | Previous diagnostic |
| `Space+dn` | Next diagnostic |

### Diagnostics (Trouble)

| Key | Action |
|---|---|
| `Space+xx` | All diagnostics |
| `Space+xX` | Buffer diagnostics |
| `Space+xs` | Symbols |
| `Space+xl` | LSP definitions |
| `Space+xq` | Quickfix list |

### Git

| Key | Action |
|---|---|
| `Space+gg` | Open Lazygit |
| `Space+gb` | Toggle git blame |

### Editing

| Key | Action |
|---|---|
| `J / K` (visual) | Move line down / up |
| `< / >` (visual) | Indent left / right |
| `p` (visual) | Paste without overwriting register |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `.` | Repeat last command |

---

## Tmux

> Prefix key: `Ctrl+A`

### Sessions

| Key | Action |
|---|---|
| `Prefix+Ctrl+S` | Save session |
| `Prefix+Ctrl+R` | Restore session |
| `Prefix+$` | Rename session |

### Windows

| Key | Action |
|---|---|
| `Prefix+c` | New window |
| `Prefix+,` | Rename window |
| `Prefix+&` | Kill window |
| `Prefix+Tab` | Last window |
| `Prefix+Ctrl+h` | Previous window |
| `Prefix+Ctrl+l` | Next window |

### Panes

| Key | Action |
|---|---|
| `Prefix+\|` | Split vertical |
| `Prefix+-` | Split horizontal |
| `Prefix+h/j/k/l` | Navigate panes |
| `Prefix+H/J/K/L` | Resize pane |
| `Prefix+x` | Kill pane |
| `Prefix+z` | Zoom pane (toggle fullscreen) |

### Copy Mode

| Key | Action |
|---|---|
| `Prefix+Enter` | Enter copy mode |
| `v` | Begin selection |
| `y` | Copy selection to clipboard |
| `Escape` | Cancel |

### Misc

| Key | Action |
|---|---|
| `Prefix+r` | Reload config |
| `Prefix+I` | Install TPM plugins |

---

## Zsh Aliases

### Git

| Alias | Command |
|---|---|
| `gs` | `git status` |
| `ga` | `git add` |
| `gaa` | `git add --all` |
| `gcm` | `git commit -m` |
| `gco` | `git checkout` |
| `gcb` | `git checkout -b` |
| `gp` | `git push` |
| `gpl` | `git pull` |
| `gl` | `git log --oneline --graph` |
| `gd` | `git diff` |

### Go

| Alias | Command |
|---|---|
| `gor` | `go run .` |
| `gob` | `go build ./...` |
| `got` | `go test ./...` |
| `gotv` | `go test -v ./...` |
| `gotc` | `go test -cover ./...` |
| `gomod` | `go mod tidy` |

### Tmux

| Alias | Command |
|---|---|
| `t` | `tmux` |
| `ta` | `tmux attach -t` |
| `tn` | `tmux new -s` |
| `tls` | `tmux ls` |
| `tk` | `tmux kill-session -t` |

### Misc

| Alias | Command |
|---|---|
| `reload` | `source ~/.zshrc` |
| `dotfiles` | `cd ~/.dotfiles` |
| `brewup` | `brew update && brew upgrade && brew cleanup` |
| `vscode-sync` | Export VSCode extensions to `extensions.txt` |
| `ip` | Show public IP |
| `localip` | Show local IP |


-- =============================================================================
-- core/keymaps.lua
-- =============================================================================

vim.g.mapleader      = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Escape
map("i", "jk", "<ESC>")

-- Save/quit
map("n", "<leader>w", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Scroll centered
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Buffers
map("n", "<Tab>",   "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bprevious<CR>")
map("n", "<leader>bd", "<cmd>bdelete<CR>")

-- Move lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Indent
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Clear search
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

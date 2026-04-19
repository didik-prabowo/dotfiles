-- =============================================================================
-- plugins/git.lua
-- =============================================================================

return {
  -- Lazygit inside Neovim
  {
    "kdheepak/lazygit.nvim",
    cmd          = "LazyGit",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<CR>", desc = "Open Lazygit" },
    },
  },

  -- Git blame & diff inline
  {
    "FabijanZulj/blame.nvim",
    cmd  = "BlameToggle",
    keys = {
      { "<leader>gb", "<cmd>BlameToggle<CR>", desc = "Toggle git blame" },
    },
    opts = {},
  },
}

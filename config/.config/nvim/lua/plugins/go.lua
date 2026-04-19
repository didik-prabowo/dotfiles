-- =============================================================================
-- plugins/go.lua
-- =============================================================================

return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "nvim-treesitter/nvim-treesitter",
    },
    event  = { "CmdlineEnter" },
    ft     = { "go", "gomod" },
    build  = ':lua require("go.install").update_all_sync()',
    config = function()
      require("go").setup({
        goimports  = "gopls",
        gofmt      = "gofumpt",
        lsp_inlay_hints = { enable = true },
        luasnip    = true,
        test_runner = "go",
      })

      -- Format + organize imports on save
      local format_grp = vim.api.nvim_create_augroup("GoFormat", { clear = true })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern  = "*.go",
        group    = format_grp,
        callback = function()
          require("go.format").goimports()
        end,
      })
    end,
  },
}

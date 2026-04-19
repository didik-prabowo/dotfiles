return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    main  = "nvim-treesitter.config",
    opts  = {
      ensure_installed = {
        "go", "gomod", "gosum",
        "lua", "vim", "vimdoc",
        "bash", "json", "yaml", "toml",
        "markdown", "markdown_inline",
        "gitignore", "gitcommit",
      },
      sync_install = false,
      auto_install = true,
      highlight    = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    },
  },
}

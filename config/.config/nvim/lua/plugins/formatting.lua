-- =============================================================================
-- plugins/formatting.lua
-- =============================================================================

return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				desc = "Format file",
			},
		},
		opts = {
			formatters_by_ft = {
				go = { "goimports", "gofumpt" },
				lua = { "stylua" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				sh = { "shfmt" },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_fallback = true,
			},
		},
	},
}

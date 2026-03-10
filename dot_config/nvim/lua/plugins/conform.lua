return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			r = { "air" },
			python = { "ruff_format" },
			json = { "biome" },
			javascript = { "prettierd", stop_after_first = true },
			markdown = { "prettierd" },
			toml = { "taplo" },
			typst = { "typstyle" },
			xml = { "xmlformatter" },
		},
		formatters = {
			biome = { require_cwd = true },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
	keys = {
		{
			"lc",
			function()
				require("conform").format()
			end,
			desc = "Format selection",
			mode = "x",
		},
	},
}

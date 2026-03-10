return {
	"SmiteshP/nvim-navic",
	dependencies = { "neovim/nvim-lspconfig" },
	opts = {
		lsp = {
			auto_attach = true,
			preference = {
				r = { "r-languageserver" },
			},
		},
	},
}

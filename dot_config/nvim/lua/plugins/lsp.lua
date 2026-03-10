return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
	},
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonLog", "MasonUninstallAll", "MasonUpdate" },
	},
}

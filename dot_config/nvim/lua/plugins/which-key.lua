return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		delay = 0,
		preset = "helix",
		spec = {
			{ "<leader>b", group = "Buffer" },
			{ "<leader>C", group = "Comment" },
			{ "<leader>f", group = "Files" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>S", group = "Session" },
			{ "<leader>s", group = "Find" },
			{ "<leader>t", group = "Terminal" },
			{ "<leader>w", group = "Wiki Notes" },
			{ "<leader>z", group = "Zen" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}

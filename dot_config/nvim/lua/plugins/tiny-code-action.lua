return {
	"rachartier/tiny-code-action.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	event = "LspAttach",
	keys = {
		{
			"<leader>lA",
			function()
				require("tiny-code-action").code_action({})
			end,
			desc = "Show code actions",
		},
	},
}

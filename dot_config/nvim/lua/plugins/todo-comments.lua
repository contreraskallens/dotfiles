return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = true },
	event = { "BufReadPost", "BufNewFile" },
}

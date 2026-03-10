return {
	"romgrk/barbar.nvim",
	lazy = false,
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = true
	end,
	opts = {},
	keys = {
		{ "<leader><space>", "<CMD>BufferPick<CR>", desc = "Pick buffer" },
		{ "<leader>bb", "<CMD>BufferPick<CR>", desc = "Pick buffer" },
		{ "<leader>bB", "<CMD>BufferPickDelete<CR>", desc = "Pick buffer to delete" },
		{ "<leader>bc", "<CMD>BufferClose<CR>", desc = "Close buffer" },
		{ "<leader>bC", "<CMD>BufferCloseAllButCurrentOrPinned<CR>", desc = "Close all buffers but current or pinned" },
		{ "<leader>bd", "<CMD>BufferDelete!<CR>", desc = "Delete buffer" },
		{ "<leader>bD", "<CMD>BufferWipeout!<CR>", "Wipeout buffer" },
		{ "<leader>bp", "<CMD>BufferPin<CR>", "Pin/Unpin buffer" },
		{ "<leader>bv", "<CMD>BufferCloseAllButVisible<CR>", desc = "Close all buffers but visible" },
		{ "<A-<>", "<CMD>BufferMovePrevous<CR>", desc = "Reorder buffer to previous" },
		{ "<A->>", "<CMD>BufferMoveNext<CR>", desc = "Reorder buffer to next" },
	},
}

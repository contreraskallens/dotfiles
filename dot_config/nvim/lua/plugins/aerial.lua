return {
	"stevearc/aerial.nvim",
	event = "LspAttach",
	opts = {
		on_attach = function(bufnr)
			vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Aerial previous" })
			vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Aerial next" })
		end,
	},
	keys = {
		{ "<leader>la", "<CMD>AerialToggle!<CR>", desc = "Toggle [A]erial" },
	},
}

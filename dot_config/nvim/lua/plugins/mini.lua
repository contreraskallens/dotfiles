return {
	"nvim-mini/mini.nvim",
	version = false,
	init = function()
		require("mini.basics").setup({
			options = {
				basics = false,
			},
			mappings = {
				windows = true,
				move_with_alt = true,
				option_toggle_prefix = ",",
			},
		})
		require("mini.misc").setup()
		require("mini.sessions").setup()
		require("mini.starter").setup()
		require("mini.animate").setup()
		require("mini.bracketed").setup()
		require("mini.colors").setup()
		require("mini.comment").setup()
		require("mini.cursorword").setup()
		require("mini.diff").setup()
		require("mini.move").setup()
		require("mini.pairs").setup()
		require("mini.splitjoin").setup()
		require("mini.trailspace").setup()
	end,
}

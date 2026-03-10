return {
	"danymat/neogen",
	opts = {
		enabled = true,
		languages = {
			lua = {
				template = {
					annotation_convention = "emmylua", -- for a full list of annotation_conventions, see supported-languages below,
				},
			},
			python = {
				template = {
					annotation_convention = "google_docstrings",
				},
			},
			julia = {
				template = {
					annotation_convention = "julia",
				},
			},
		},
	},
	keys = {
		{
			"<leader>lD",
			function()
				require("neogen").generate()
			end,
			desc = "Insert docs",
		},
	},
}

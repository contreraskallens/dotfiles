return {
	"rachartier/tiny-inline-diagnostic.nvim",
	opts = {
		options = {
			show_source = {
				enabled = true,
				if_many = true,
			},
			use_icons_from_diagnostic = true,
			multilines = {
				enabled = true,
				always_show = true,
				trim_whitespace = true,
			},
			show_all_diags_on_cursorline = true,
		},
	},
}

return {
	"saghen/blink.cmp",
	build = "cargo build --release",
	dependences = {
		"nvim-lua/plenary",
	},
	opts = {
		sources = {
			default = { "lsp", "path", "snippets" },
		},
		keymap = { preset = "super-tab" },
		appearance = {
			nerd_font_variant = "mono",
		},
		cmdline = {
			enabled = true,
			keymap = {
				preset = "cmdline",
				["<Right>"] = false,
				["<Left>"] = false,
			},
		},
		completion = {
			trigger = {
				show_on_keyword = true,
			},
			documentation = { auto_show = false },
			list = { selection = { preselect = true } },
			ghost_text = { enabled = true },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
